.class Lcom/android/mail/ui/ConversationsInOutboxTipView$4;
.super Ljava/lang/Object;
.source "ConversationsInOutboxTipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationsInOutboxTipView;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationsInOutboxTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$4;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/mail/ui/ConversationsInOutboxTipView$4;->this$0:Lcom/android/mail/ui/ConversationsInOutboxTipView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->access$400(Lcom/android/mail/ui/ConversationsInOutboxTipView;)Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 312
    return-void
.end method
