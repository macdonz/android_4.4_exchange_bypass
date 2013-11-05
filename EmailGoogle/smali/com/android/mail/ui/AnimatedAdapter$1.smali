.class Lcom/android/mail/ui/AnimatedAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AnimatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .parameter "animation"

    .prologue
    const/4 v8, 0x0

    .line 119
    #v8=(Null);
    instance-of v5, p1, Landroid/animation/AnimatorSet;

    #v5=(Boolean);
    if-eqz v5, :cond_3

    move-object v4, p1

    .line 120
    #v4=(Reference);
    check-cast v4, Landroid/animation/AnimatorSet;

    .line 121
    .local v4, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .end local v4           #set:Landroid/animation/AnimatorSet;
    .end local p1
    .local v2, obj:Ljava/lang/Object;
    :goto_0
    #v2=(Reference);v4=(Conflicted);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v6=(Reference);
    invoke-static {v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$300(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$400(Lcom/android/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 126
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$100(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$400(Lcom/android/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 127
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$500(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$400(Lcom/android/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 128
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    iget-object v6, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$000(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/android/mail/ui/AnimatedAdapter;->access$400(Lcom/android/mail/ui/AnimatedAdapter;Ljava/lang/Object;Ljava/util/HashSet;)V

    .line 129
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v5}, Lcom/android/mail/ui/AnimatedAdapter;->access$600(Lcom/android/mail/ui/AnimatedAdapter;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    instance-of v5, v2, Lcom/android/mail/ui/LeaveBehindItem;

    if-eqz v5, :cond_1

    move-object v3, v2

    .line 130
    #v3=(Reference);
    check-cast v3, Lcom/android/mail/ui/LeaveBehindItem;

    .line 131
    .local v3, objItem:Lcom/android/mail/ui/LeaveBehindItem;
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/ui/LeaveBehindItem;->getConversationId()J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v5, v6, v7}, Lcom/android/mail/ui/AnimatedAdapter;->clearLeaveBehind(J)V

    .line 132
    invoke-virtual {v3}, Lcom/android/mail/ui/LeaveBehindItem;->commit()V

    .line 133
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v5}, Lcom/android/mail/ui/AnimatedAdapter;->access$600(Lcom/android/mail/ui/AnimatedAdapter;)Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/AnimatedAdapter;->getLastLeaveBehindItem()Lcom/android/mail/ui/LeaveBehindItem;

    move-result-object v1

    .line 137
    .local v1, item:Lcom/android/mail/ui/LeaveBehindItem;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/android/mail/ui/LeaveBehindItem;->cancelFadeInTextAnimationIfNotStarted()Z

    move-result v0

    .line 139
    .local v0, cancelled:Z
    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v1, v8}, Lcom/android/mail/ui/LeaveBehindItem;->startFadeInTextAnimation(I)V

    .line 145
    .end local v0           #cancelled:Z
    .end local v1           #item:Lcom/android/mail/ui/LeaveBehindItem;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 148
    .end local v3           #objItem:Lcom/android/mail/ui/LeaveBehindItem;
    :cond_1
    #v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/ui/AnimatedAdapter;->isAnimating()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/mail/ui/AnimatedAdapter;->access$700(Lcom/android/mail/ui/AnimatedAdapter;)Lcom/android/mail/ui/ControllableActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v6=(Reference);
    invoke-interface {v5, v6}, Lcom/android/mail/ui/ControllableActivity;->onAnimationEnd(Lcom/android/mail/ui/AnimatedAdapter;)V

    .line 151
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 123
    .end local v2           #obj:Ljava/lang/Object;
    .restart local p1
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(Uninit);v7=(Uninit);
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #obj:Ljava/lang/Object;
    #v2=(Reference);
    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/AnimatedAdapter;->access$000(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/AnimatedAdapter;->access$100(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 111
    iget-object v0, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v0}, Lcom/android/mail/ui/AnimatedAdapter;->access$200(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/mail/ui/AnimatedAdapter$1;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-static {v0}, Lcom/android/mail/ui/AnimatedAdapter;->access$300(Lcom/android/mail/ui/AnimatedAdapter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 114
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
