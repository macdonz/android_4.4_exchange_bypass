.class Lcom/android/mail/ui/ActionableToastBar$2;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ActionableToastBar;->show(Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZLcom/android/mail/ui/ToastBarOperation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ActionableToastBar;

.field final synthetic val$listener:Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

.field final synthetic val$op:Lcom/android/mail/ui/ToastBarOperation;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;Lcom/android/mail/ui/ToastBarOperation;Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mail/ui/ActionableToastBar$2;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    iput-object p2, p0, Lcom/android/mail/ui/ActionableToastBar$2;->val$op:Lcom/android/mail/ui/ToastBarOperation;

    iput-object p3, p0, Lcom/android/mail/ui/ActionableToastBar$2;->val$listener:Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    const/4 v2, 0x1

    .line 123
    #v2=(One);
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$2;->val$op:Lcom/android/mail/ui/ToastBarOperation;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ToastBarOperation;->shouldTakeOnActionClickedPrecedence()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$2;->val$op:Lcom/android/mail/ui/ToastBarOperation;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar$2;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/ToastBarOperation;->onActionClicked(Landroid/content/Context;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$2;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 129
    return-void

    .line 126
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$2;->val$listener:Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ActionableToastBar$2;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/ActionableToastBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;->onActionClicked(Landroid/content/Context;)V

    goto :goto_0
.end method
