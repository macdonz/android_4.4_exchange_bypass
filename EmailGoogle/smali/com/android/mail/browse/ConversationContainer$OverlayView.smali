.class Lcom/android/mail/browse/ConversationContainer$OverlayView;
.super Ljava/lang/Object;
.source "ConversationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayView"
.end annotation


# instance fields
.field itemType:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "itemType"

    .prologue
    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 233
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/ConversationContainer$OverlayView;->view:Landroid/view/View;

    .line 234
    iput p2, p0, Lcom/android/mail/browse/ConversationContainer$OverlayView;->itemType:I

    .line 235
    return-void
.end method