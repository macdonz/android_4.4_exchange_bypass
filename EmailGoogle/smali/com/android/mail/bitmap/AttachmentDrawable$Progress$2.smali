.class Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachmentDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/bitmap/AttachmentDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;


# direct methods
.method constructor <init>(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->access$300(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$2;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-static {v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->access$300(Lcom/android/mail/bitmap/AttachmentDrawable$Progress;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 538
    :cond_0
    return-void
.end method
