.class Lcom/android/email/activity/setup/AccountServerBaseFragment$2;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 252
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$errorMessage:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    #v1=(Uninit);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
