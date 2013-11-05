.class public Lcom/android/mail/ui/ControllerFactory;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static forActivity(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;Z)Lcom/android/mail/ui/ActivityController;
    .locals 1
    .parameter "activity"
    .parameter "viewMode"
    .parameter "isTabletDevice"

    .prologue
    .line 33
    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/mail/ui/TwoPaneController;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/mail/ui/TwoPaneController;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V

    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Uninit);
    new-instance v0, Lcom/android/mail/ui/OnePaneController;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/android/mail/ui/OnePaneController;-><init>(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;)V

    #v0=(Reference);
    goto :goto_0
.end method
