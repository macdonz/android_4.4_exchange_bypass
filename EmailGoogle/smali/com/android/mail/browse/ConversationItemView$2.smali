.class Lcom/android/mail/browse/ConversationItemView$2;
.super Ljava/lang/Object;
.source "ConversationItemView.java"

# interfaces
.implements Lcom/android/mail/ui/DividedImageCanvas$InvalidateCallback;


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
.method constructor <init>(Lcom/android/mail/browse/ConversationItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 6

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    if-nez v0, :cond_0

    .line 504
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 500
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    #v2=(Integer);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesX:I

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesWidth:I

    #v4=(Integer);
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v4, v4, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesY:I

    #v4=(Integer);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationItemView$2;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v5, v5, Lcom/android/mail/browse/ConversationItemViewCoordinates;->contactImagesHeight:I

    #v5=(Integer);
    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/browse/ConversationItemView;->invalidate(IIII)V

    goto :goto_0
.end method
