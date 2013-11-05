.class Lcom/android/mail/bitmap/AttachmentDrawable$Progress$1;
.super Ljava/lang/Object;
.source "AttachmentDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 526
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Progress$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Progress;

    #v1=(Reference);
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    invoke-virtual {v1, v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Progress;->setLevel(I)Z

    .line 530
    return-void
.end method
