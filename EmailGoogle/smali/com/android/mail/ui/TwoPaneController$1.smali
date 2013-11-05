.class Lcom/android/mail/ui/TwoPaneController$1;
.super Ljava/lang/Object;
.source "TwoPaneController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/TwoPaneController;->hideOrRepositionToastBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/TwoPaneController;

.field final synthetic val$animated:Z

.field final synthetic val$oldViewMode:I


# direct methods
.method constructor <init>(Lcom/android/mail/ui/TwoPaneController;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    iput p2, p0, Lcom/android/mail/ui/TwoPaneController$1;->val$oldViewMode:I

    iput-boolean p3, p0, Lcom/android/mail/ui/TwoPaneController$1;->val$animated:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 540
    iget v0, p0, Lcom/android/mail/ui/TwoPaneController$1;->val$oldViewMode:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v1}, Lcom/android/mail/ui/ViewMode;->getMode()I

    move-result v1

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0}, Lcom/android/mail/ui/ActionableToastBar;->isAnimating()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 542
    :cond_0
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    iget-boolean v1, p0, Lcom/android/mail/ui/TwoPaneController$1;->val$animated:Z

    #v1=(Boolean);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 547
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 545
    :cond_1
    #v0=(Boolean);v1=(Integer);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/TwoPaneController$1;->this$0:Lcom/android/mail/ui/TwoPaneController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mToastBar:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->getOperation()Lcom/android/mail/ui/ToastBarOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/TwoPaneController;->repositionToastBar(Lcom/android/mail/ui/ToastBarOperation;)V

    goto :goto_0
.end method
