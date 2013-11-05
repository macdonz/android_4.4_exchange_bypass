.class public Lcom/android/email/data/ClosingMatrixCursor;
.super Lcom/android/mail/utils/MatrixCursorWithCachedColumns;
.source "ClosingMatrixCursor.java"


# instance fields
.field private final mInnerCursor:Landroid/database/Cursor;


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/email/data/ClosingMatrixCursor;->mInnerCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/android/mail/utils/MatrixCursorWithCachedColumns;->close()V

    .line 42
    return-void
.end method
