.class Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AttachmentDrawable.java"


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
    .line 462
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$2;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder$2;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;->access$200(Lcom/android/mail/bitmap/AttachmentDrawable$Placeholder;)V

    .line 466
    return-void
.end method
