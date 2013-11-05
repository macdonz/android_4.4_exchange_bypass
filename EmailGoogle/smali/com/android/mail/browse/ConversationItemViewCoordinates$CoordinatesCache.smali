.class public Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemViewCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordinatesCache"
.end annotation


# instance fields
.field private final mCoordinatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/mail/browse/ConversationItemViewCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    #p0=(Reference);
    new-instance v0, Landroid/util/SparseArray;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCoordinates(I)Lcom/android/mail/browse/ConversationItemViewCoordinates;
    .locals 1
    .parameter "key"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationItemViewCoordinates;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .parameter "layoutId"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "layoutId"
    .parameter "view"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mViewsCache:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    return-void
.end method

.method public put(ILcom/android/mail/browse/ConversationItemViewCoordinates;)V
    .locals 1
    .parameter "key"
    .parameter "coords"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$CoordinatesCache;->mCoordinatesCache:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    return-void
.end method
