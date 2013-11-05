.class public final Lcom/android/email/activity/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    #p0=(Reference);
    return-void
.end method

.method public static debugSetWindowFlags(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/high16 v2, 0x100

    .line 85
    #v2=(Integer);
    sget-boolean v0, Lcom/android/email2/ui/MailActivityEmail;->sDebugInhibitGraphicsAcceleration:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 94
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 91
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
