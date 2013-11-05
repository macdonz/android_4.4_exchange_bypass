.class Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;
.super Landroid/os/AsyncTask;
.source "ConversationCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStartPos:I

.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)V
    .locals 0
    .parameter
    .parameter "startPosition"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    #p0=(Reference);
    iput p2, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->mStartPos:I

    .line 284
    return-void
.end method

.method static synthetic access$400(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    iget v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->mStartPos:I

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "param"

    .prologue
    .line 289
    :try_start_0
    const-string v3, "backgroundCaching"

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/utils/Utils;->traceBeginSection(Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->getCount()I

    move-result v0

    .line 299
    .local v0, count:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$000(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I

    move-result v1

    .line 300
    .local v1, pos:I
    #v1=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->isCancelled()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    if-lt v1, v0, :cond_1

    .line 315
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    .line 319
    const/4 v3, 0x0

    #v3=(Null);
    return-object v3

    .line 304
    :cond_1
    :try_start_1
    #v3=(Boolean);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$100(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;

    .line 305
    .local v2, rowData:Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    iget-object v3, v2, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    if-nez v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    invoke-virtual {v3, v1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->moveToPosition(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 309
    new-instance v3, Lcom/android/mail/providers/Conversation;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v4=(Reference);
    invoke-direct {v3, v4}, Lcom/android/mail/providers/Conversation;-><init>(Landroid/database/Cursor;)V

    #v3=(Reference);
    iput-object v3, v2, Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;->conversation:Lcom/android/mail/providers/Conversation;

    .line 313
    :cond_2
    #v3=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v3=(Reference);
    add-int/lit8 v4, v1, 0x1

    #v4=(Integer);
    invoke-static {v3, v4}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$002(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    .end local v0           #count:I
    .end local v1           #pos:I
    .end local v2           #rowData:Lcom/android/mail/browse/ConversationCursor$UnderlyingRowData;
    :catchall_0
    move-exception v3

    #v3=(Reference);
    invoke-static {}, Lcom/android/mail/utils/Utils;->traceEndSection()V

    throw v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 279
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$202(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;)Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;

    .line 325
    const-string v0, "ConvCursor"

    const-string v1, "ConversationCursor caching complete pos=%s"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper$CacheLoaderTask;->this$0:Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;->access$000(Lcom/android/mail/browse/ConversationCursor$UnderlyingCursorWrapper;)I

    move-result v4

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    return-void
.end method
