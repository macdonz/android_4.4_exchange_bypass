.class Lcom/android/mail/ui/ConversationSyncDisabledTipView$4;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationSyncDisabledTipView;->startDestroyAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$4;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 373
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$4;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->access$200(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 362
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 357
    return-void
.end method
