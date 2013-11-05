.class Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;
.super Ljava/lang/Object;
.source "ConversationItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemView$CabAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationItemView$CabAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2233
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->access$400(Lcom/android/mail/browse/ConversationItemView$CabAnimator;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->access$402(Lcom/android/mail/browse/ConversationItemView$CabAnimator;Z)Z

    .line 2226
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$2;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    iget-object v0, v0, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->this$0:Lcom/android/mail/browse/ConversationItemView;

    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/mail/browse/ConversationItemView;->access$502(Lcom/android/mail/browse/ConversationItemView;J)J

    .line 2228
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2238
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2218
    return-void
.end method
