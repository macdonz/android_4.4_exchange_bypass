.class public Lcom/android/mail/content/ObjectCursor;
.super Landroid/database/CursorWrapper;
.source "ObjectCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/database/CursorWrapper;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mFactory:Lcom/android/mail/content/CursorCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/content/CursorCreator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/mail/content/CursorCreator;)V
    .locals 2
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/mail/content/CursorCreator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<TT;>;"
    .local p2, factory:Lcom/android/mail/content/CursorCreator;,"Lcom/android/mail/content/CursorCreator<TT;>;"
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 41
    #p0=(Reference);
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    #v0=(UninitRef);
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    #v1=(Integer);
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    .line 46
    :goto_0
    #v1=(Conflicted);
    iput-object p2, p0, Lcom/android/mail/content/ObjectCursor;->mFactory:Lcom/android/mail/content/CursorCreator;

    .line 47
    return-void

    .line 44
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<TT;>;"
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 91
    iget-object v0, p0, Lcom/android/mail/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 92
    return-void
.end method

.method final fillCache()V
    .locals 2

    .prologue
    .line 78
    .local p0, this:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 79
    .local v0, c:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-void

    .line 84
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->getModel()Ljava/lang/Object;

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public final getModel()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/android/mail/content/ObjectCursor;,"Lcom/android/mail/content/ObjectCursor<TT;>;"
    invoke-virtual {p0}, Lcom/android/mail/content/ObjectCursor;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 58
    .local v0, c:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 59
    const/4 v3, 0x0

    .line 70
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference);v4=(Conflicted);
    return-object v3

    .line 61
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 63
    .local v1, currentPosition:I
    #v1=(Integer);
    iget-object v4, p0, Lcom/android/mail/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    #v4=(Reference);
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, prev:Ljava/lang/Object;,"TT;"
    #v3=(Reference);
    if-nez v3, :cond_0

    .line 68
    iget-object v4, p0, Lcom/android/mail/content/ObjectCursor;->mFactory:Lcom/android/mail/content/CursorCreator;

    invoke-interface {v4, v0}, Lcom/android/mail/content/CursorCreator;->createFromCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, model:Ljava/lang/Object;,"TT;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/mail/content/ObjectCursor;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v2

    .line 70
    goto :goto_0
.end method
