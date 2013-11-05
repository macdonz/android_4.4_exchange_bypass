.class Lcom/android/ex/chips/BaseRecipientAdapter$1;
.super Landroid/os/AsyncTask;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;->fetchPhotoAsync(Lcom/android/ex/chips/RecipientEntry;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

.field final synthetic val$entry:Lcom/android/ex/chips/RecipientEntry;

.field final synthetic val$photoThumbnailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Landroid/net/Uri;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iput-object p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 794
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 11
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 799
    #v3=(Null);
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$500(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/ex/chips/BaseRecipientAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 801
    .local v9, photoCursor:Landroid/database/Cursor;
    #v9=(Reference);
    if-eqz v9, :cond_2

    .line 803
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 804
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 807
    #v3=(Reference);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_0
    :goto_0
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    return-object v3

    .line 807
    :cond_1
    #v0=(Boolean);v3=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    #v0=(Reference);
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 815
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$500(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 817
    .local v8, is:Ljava/io/InputStream;
    #v8=(Reference);
    if-eqz v8, :cond_0

    .line 818
    const/16 v0, 0x4000

    #v0=(PosShort);
    new-array v7, v0, [B

    .line 819
    .local v7, buffer:[B
    #v7=(Reference);
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 822
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    #v6=(Reference);v10=(Conflicted);
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, size:I
    #v10=(Integer);
    const/4 v0, -0x1

    #v0=(Byte);
    if-eq v10, v0, :cond_3

    .line 823
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {v6, v7, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 826
    .end local v10           #size:I
    :catchall_1
    #v0=(PosShort);v10=(Conflicted);
    move-exception v0

    :try_start_3
    #v0=(Reference);
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v0

    .line 830
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buffer:[B
    .end local v8           #is:Ljava/io/InputStream;
    :catch_0
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_0

    .line 826
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v10       #size:I
    :cond_3
    #v0=(Byte);v6=(Reference);v7=(Reference);v8=(Reference);v10=(Integer);
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 828
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    #v3=(Reference);
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 794
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .parameter "photoBytes"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/ex/chips/RecipientEntry;->setPhotoBytes([B)V

    .line 840
    if-eqz p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1800(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$1;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->notifyDataSetChanged()V

    .line 844
    :cond_0
    #v1=(Conflicted);
    return-void
.end method
