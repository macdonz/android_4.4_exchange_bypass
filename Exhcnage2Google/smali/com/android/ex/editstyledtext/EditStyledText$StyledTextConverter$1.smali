.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    .line 1928
    #v10=(Null);
    const-string v11, "EditStyledText"

    #v11=(Reference);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "--- sethtml: src="

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string v11, "content://"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_1

    .line 1930
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1932
    .local v8, uri:Landroid/net/Uri;
    #v8=(Reference);
    const/4 v1, 0x0

    .line 1933
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    #v1=(Null);
    const/4 v0, 0x0

    .line 1934
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    #v0=(Null);
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1935
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1937
    .local v5, is:Ljava/io/InputStream;
    #v5=(Reference);
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    #v6=(UninitRef);
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1938
    .local v6, opt:Landroid/graphics/BitmapFactory$Options;
    #v6=(Reference);
    const/4 v11, 0x1

    #v11=(One);
    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1939
    const/4 v11, 0x0

    #v11=(Null);
    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1940
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1941
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1943
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1944
    .local v9, width:I
    #v9=(Integer);
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1945
    .local v4, height:I
    #v4=(Integer);
    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #v11=(Integer);
    iget-object v12, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v12, v12, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v12}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v12

    #v12=(Integer);
    if-le v11, v12, :cond_0

    .line 1946
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #v11=(Reference);
    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v9

    .line 1947
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v11

    #v11=(Integer);
    mul-int/2addr v11, v4

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v4, v11, v12

    .line 1948
    new-instance v7, Landroid/graphics/Rect;

    #v7=(UninitRef);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    invoke-direct {v7, v11, v12, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1949
    .local v7, padding:Landroid/graphics/Rect;
    #v7=(Reference);
    const/4 v11, 0x0

    invoke-static {v5, v7, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1953
    .end local v7           #padding:Landroid/graphics/Rect;
    :goto_0
    #v0=(Reference);v7=(Conflicted);v11=(Integer);v12=(Integer);
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #v2=(UninitRef);
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #v11=(Reference);
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v2, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1955
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    #v2=(Reference);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    :try_start_1
    #v12=(Null);
    invoke-virtual {v2, v11, v12, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1956
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1968
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #height:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #width:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    return-object v2

    .line 1951
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #height:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #width:I
    :cond_0
    :try_start_2
    #v0=(Null);v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Reference);v6=(Reference);v7=(Uninit);v8=(Reference);v9=(Integer);v11=(Integer);v12=(Integer);
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 1958
    .end local v4           #height:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #width:I
    :catch_0
    #v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v3

    .line 1959
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    #v1=(Reference);v3=(Reference);
    const-string v11, "EditStyledText"

    #v11=(Reference);
    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "--- set html: Failed to loaded content "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v10

    .line 1960
    #v2=(Null);
    goto :goto_1

    .line 1961
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    #v1=(Null);v2=(Conflicted);v3=(Uninit);v11=(Conflicted);v12=(Conflicted);
    move-exception v3

    .line 1962
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    #v1=(Reference);v3=(Reference);
    const-string v11, "EditStyledText"

    #v11=(Reference);
    const-string v12, "OutOfMemoryError"

    #v12=(Reference);
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    const/4 v12, 0x5

    #v12=(PosByte);
    invoke-virtual {v11, v12}, Lcom/android/ex/editstyledtext/EditStyledText;->setHint(I)V

    move-object v2, v10

    .line 1965
    #v2=(Null);
    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v11=(Boolean);v12=(Reference);
    move-object v2, v10

    .line 1968
    #v2=(Null);
    goto :goto_1

    .line 1961
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #height:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #width:I
    :catch_2
    #v0=(Reference);v1=(Null);v2=(Reference);v4=(Integer);v5=(Reference);v6=(Reference);v7=(Conflicted);v8=(Reference);v9=(Integer);v11=(Null);v12=(Null);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    goto :goto_3

    .line 1958
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :catch_3
    #v1=(Null);v3=(Uninit);
    move-exception v3

    #v3=(Reference);
    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    goto :goto_2
.end method
