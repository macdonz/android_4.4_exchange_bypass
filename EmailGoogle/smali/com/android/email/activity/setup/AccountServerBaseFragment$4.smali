.class Lcom/android/email/activity/setup/AccountServerBaseFragment$4;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(ILcom/android/email/activity/setup/SetupData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$settingsResult:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 310
    iget v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterEdit()V

    .line 317
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0

    .line 314
    :cond_1
    #v0=(Integer);v1=(PosByte);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterSetup()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onCheckSettingsComplete(ILcom/android/email/activity/setup/SetupData;)V

    .line 324
    return-void
.end method
