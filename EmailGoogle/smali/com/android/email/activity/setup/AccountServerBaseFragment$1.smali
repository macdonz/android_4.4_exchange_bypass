.class Lcom/android/email/activity/setup/AccountServerBaseFragment$1;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/app/Activity;

    const-string v2, "input_method"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$errorMessage:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 250
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 248
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$view:Landroid/widget/TextView;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
