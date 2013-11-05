.class Lcom/android/mail/browse/ConversationItemView$1;
.super Lcom/android/mail/browse/ConversationItemView$CabAnimator;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/ConversationItemView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationItemView;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    invoke-direct/range {p0 .. p6}, Lcom/android/mail/browse/ConversationItemView$CabAnimator;-><init>(Lcom/android/mail/browse/ConversationItemView;Ljava/lang/String;FFJ)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public invalidateArea()V
    .locals 5

    .prologue
    .line 479
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v1, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    .line 480
    .local v1, left:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    invoke-static {v4}, Lcom/android/mail/browse/ConversationItemView;->access$200(Lcom/android/mail/browse/ConversationItemView;)Lcom/android/mail/ui/DividedImageCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/ui/DividedImageCanvas;->getWidth()I

    move-result v4

    #v4=(Integer);
    add-int v2, v1, v4

    .line 481
    .local v2, right:I
    #v2=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v3, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    .line 482
    .local v3, top:I
    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    invoke-static {v4}, Lcom/android/mail/browse/ConversationItemView;->access$200(Lcom/android/mail/browse/ConversationItemView;)Lcom/android/mail/ui/DividedImageCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/ui/DividedImageCanvas;->getHeight()I

    move-result v4

    #v4=(Integer);
    add-int v0, v3, v4

    .line 483
    .local v0, bottom:I
    #v0=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$1;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v4=(Reference);
    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/android/mail/browse/ConversationItemView;->invalidate(IIII)V

    .line 484
    return-void
.end method
