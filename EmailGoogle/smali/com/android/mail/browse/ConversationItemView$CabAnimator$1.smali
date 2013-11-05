.class Lcom/android/mail/browse/ConversationItemView$CabAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/ConversationItemView$CabAnimator;->createAnimator()Landroid/animation/ObjectAnimator;
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
    .line 2204
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$1;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$CabAnimator$1;->this$1:Lcom/android/mail/browse/ConversationItemView$CabAnimator;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;->invalidateArea()V

    .line 2208
    return-void
.end method
