.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelperKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 4
    .parameter "oldPrintAttributes"
    .parameter "newPrintAttributes"
    .parameter "cancellationSignal"
    .parameter "layoutResultCallback"
    .parameter "bundle"

    .prologue
    const/4 v0, 0x1

    .line 154
    #v0=(One);
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 156
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    #v2=(UninitRef);
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    #v3=(Reference);
    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 160
    .local v1, info:Landroid/print/PrintDocumentInfo;
    #v1=(Reference);
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 161
    .local v0, changed:Z
    :goto_0
    #v0=(Boolean);
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 162
    return-void

    .line 160
    .end local v0           #changed:Z
    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 11
    .parameter "pageRanges"
    .parameter "fileDescriptor"
    .parameter "cancellationSignal"
    .parameter "writeResultCallback"

    .prologue
    const/high16 v10, 0x4000

    .line 168
    #v10=(Integer);
    new-instance v4, Landroid/print/pdf/PrintedPdfDocument;

    #v4=(UninitRef);
    iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #v8=(Reference);
    iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #v9=(Reference);
    invoke-direct {v4, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 171
    .local v4, pdfDocument:Landroid/print/pdf/PrintedPdfDocument;
    #v4=(Reference);
    const/4 v8, 0x1

    :try_start_0
    #v8=(One);
    invoke-virtual {v4, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 173
    .local v3, page:Landroid/graphics/pdf/PdfDocument$Page;
    #v3=(Reference);
    new-instance v0, Landroid/graphics/RectF;

    #v0=(UninitRef);
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .local v0, content:Landroid/graphics/RectF;
    #v0=(Reference);
    new-instance v2, Landroid/graphics/Matrix;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 177
    .local v2, matrix:Landroid/graphics/Matrix;
    #v2=(Reference);
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    #v8=(Float);
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    div-float v5, v8, v9

    .line 178
    .local v5, scale:F
    #v5=(Float);
    iget v8, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    #v8=(Integer);
    const/4 v9, 0x2

    #v9=(PosByte);
    if-ne v8, v9, :cond_2

    .line 179
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    #v8=(Float);
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    div-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 183
    :goto_0
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 186
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float v6, v8, v10

    .line 188
    .local v6, translateX:F
    #v6=(Float);
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float v7, v8, v10

    .line 190
    .local v7, translateY:F
    #v7=(Float);
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 193
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    #v8=(Reference);
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 196
    invoke-virtual {v4, v3}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    #v8=(UninitRef);
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #v8=(Reference);
    invoke-virtual {v4, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 203
    const/4 v8, 0x1

    #v8=(One);
    new-array v8, v8, [Landroid/print/PageRange;

    #v8=(Reference);
    const/4 v9, 0x0

    #v9=(Null);
    sget-object v10, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #v10=(Reference);
    aput-object v10, v8, v9

    invoke-virtual {p4, v8}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_1
    #v1=(Conflicted);v9=(Reference);
    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 214
    :cond_0
    if-eqz p2, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    :cond_1
    :goto_2
    return-void

    .line 181
    .end local v6           #translateX:F
    .end local v7           #translateY:F
    :cond_2
    :try_start_3
    #v1=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Integer);v9=(PosByte);v10=(Integer);
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    #v8=(Float);
    iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    #v9=(Integer);
    int-to-float v9, v9

    #v9=(Float);
    div-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_0

    .line 205
    .restart local v6       #translateX:F
    .restart local v7       #translateY:F
    :catch_0
    #v6=(Float);v7=(Float);v8=(Conflicted);v9=(Reference);v10=(Reference);
    move-exception v1

    .line 207
    .local v1, ioe:Ljava/io/IOException;
    #v1=(Reference);
    const-string v8, "PrintHelperKitkat"

    #v8=(Reference);
    const-string v9, "Error writing printed content"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p4, v8}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 211
    .end local v0           #content:Landroid/graphics/RectF;
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #page:Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5           #scale:F
    .end local v6           #translateX:F
    .end local v7           #translateY:F
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v8

    #v8=(Reference);
    if-eqz v4, :cond_3

    .line 212
    invoke-virtual {v4}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 214
    :cond_3
    if-eqz p2, :cond_4

    .line 216
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 219
    :cond_4
    :goto_3
    throw v8

    .line 217
    .restart local v0       #content:Landroid/graphics/RectF;
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #page:Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v5       #scale:F
    .restart local v6       #translateX:F
    .restart local v7       #translateY:F
    :catch_1
    #v0=(Reference);v2=(Reference);v3=(Reference);v5=(Float);v6=(Float);v7=(Float);v9=(Reference);v10=(Reference);
    move-exception v8

    goto :goto_2

    .end local v0           #content:Landroid/graphics/RectF;
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #page:Landroid/graphics/pdf/PdfDocument$Page;
    .end local v5           #scale:F
    .end local v6           #translateX:F
    .end local v7           #translateY:F
    :catch_2
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v9

    #v9=(Reference);
    goto :goto_3
.end method
