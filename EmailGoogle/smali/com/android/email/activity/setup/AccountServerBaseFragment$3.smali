.class Lcom/android/email/activity/setup/AccountServerBaseFragment$3;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 274
    #v2=(Null);
    const/4 v3, 0x6

    #v3=(PosByte);
    if-ne p2, v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 277
    .local v0, context:Landroid/content/Context;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 287
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v3=(Conflicted);
    return v2

    .line 280
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Null);v3=(Reference);
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 285
    :cond_2
    #v3=(Conflicted);
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method
