.class Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;
.super Ljava/lang/Object;
.source "AttachmentDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/android/mail/browse/ConversationItemViewCoordinates;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;


# direct methods
.method constructor <init>(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    #v1=(Reference);
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #v0=(Integer);
    int-to-float v0, v0

    #v0=(Float);
    const/high16 v2, 0x437f

    #v2=(Integer);
    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->access$102(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;F)F

    .line 459
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-virtual {v1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->getCurrentAlpha()I

    move-result v1

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->setInnerAlpha(I)V

    .line 460
    return-void
.end method
