.class public Lcom/android/mail/photo/MailPhotoViewActivity;
.super Lcom/android/ex/photo/PhotoViewActivity;
.source "MailPhotoViewActivity.java"


# instance fields
.field private mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

.field private mDownloadAgainItem:Landroid/view/MenuItem;

.field private mMenu:Landroid/view/Menu;

.field private mSaveAllItem:Landroid/view/MenuItem;

.field private mSaveItem:Landroid/view/MenuItem;

.field private mShareAllItem:Landroid/view/MenuItem;

.field private mShareItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewActivity;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/photo/MailPhotoViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->redownloadAttachment()V

    return-void
.end method

.method private getAllAttachments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 400
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    :cond_0
    #v2=(Conflicted);
    const/4 v1, 0x0

    .line 409
    :goto_0
    #v1=(Reference);
    return-object v1

    .line 404
    :cond_1
    #v1=(Uninit);v2=(Boolean);
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 406
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Attachment;>;"
    :cond_2
    #v1=(Reference);
    new-instance v2, Lcom/android/mail/providers/Attachment;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    goto :goto_0
.end method

.method private redownloadAttachment()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 310
    .local v0, attachment:Lcom/android/mail/providers/Attachment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 315
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {v1}, Lcom/android/mail/browse/AttachmentActionHandler;->cancelAttachment()V

    .line 316
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    iget v2, v0, Lcom/android/mail/providers/Attachment;->destination:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    .line 318
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private saveAllAttachments()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_1

    .line 345
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 341
    :cond_1
    #v1=(Uninit);v2=(Uninit);
    const/4 v1, -0x1

    .line 342
    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 343
    new-instance v2, Lcom/android/mail/providers/Attachment;

    #v2=(UninitRef);
    invoke-direct {v2, v0}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    #v2=(Reference);
    invoke-direct {p0, v2}, Lcom/android/mail/photo/MailPhotoViewActivity;->saveAttachment(Lcom/android/mail/providers/Attachment;)V

    goto :goto_0
.end method

.method private saveAttachment()V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/photo/MailPhotoViewActivity;->saveAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 303
    return-void
.end method

.method private saveAttachment(Lcom/android/mail/providers/Attachment;)V
    .locals 2
    .parameter "attachment"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 327
    iget-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    .line 329
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method private shareAllAttachments()V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 371
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 382
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 375
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    #v2=(Reference);
    const/4 v1, -0x1

    .line 377
    .local v1, i:I
    :goto_1
    #v1=(Integer);v3=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 378
    new-instance v3, Lcom/android/mail/providers/Attachment;

    #v3=(UninitRef);
    invoke-direct {v3, v0}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 381
    :cond_1
    #v3=(Boolean);
    iget-object v3, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v3=(Reference);
    invoke-virtual {v3, v2}, Lcom/android/mail/browse/AttachmentActionHandler;->shareAttachments(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private shareAttachment()V
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/photo/MailPhotoViewActivity;->shareAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 352
    return-void
.end method

.method private shareAttachment(Lcom/android/mail/providers/Attachment;)V
    .locals 1
    .parameter "attachment"

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 361
    iget-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentActionHandler;->shareAttachment()V

    .line 363
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public static startMailPhotoViewActivity(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/android/mail/photo/MailPhotoViewActivity;

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/ex/photo/Intents;->newPhotoViewIntentBuilder(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setPhotosUri(Ljava/lang/String;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mail/providers/UIProvider;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setProjection([Ljava/lang/String;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->setPhotoIndex(Ljava/lang/Integer;)Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;

    .line 85
    invoke-virtual {v0}, Lcom/android/ex/photo/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method private updateProgressAndEmptyViews(Lcom/android/ex/photo/fragments/PhotoViewFragment;Lcom/android/mail/providers/Attachment;)V
    .locals 5
    .parameter "fragment"
    .parameter "attachment"

    .prologue
    const/4 v4, 0x0

    .line 268
    #v4=(Null);
    invoke-virtual {p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getPhotoProgressBar()Lcom/android/ex/photo/views/ProgressBarWrapper;

    move-result-object v1

    .line 269
    .local v1, progressBar:Lcom/android/ex/photo/views/ProgressBarWrapper;
    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getEmptyText()Landroid/widget/TextView;

    move-result-object v0

    .line 270
    .local v0, emptyText:Landroid/widget/TextView;
    #v0=(Reference);
    invoke-virtual {p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->getRetryButton()Landroid/widget/ImageView;

    move-result-object v2

    .line 273
    .local v2, retryButton:Landroid/widget/ImageView;
    #v2=(Reference);
    invoke-virtual {p2}, Lcom/android/mail/providers/Attachment;->shouldShowProgress()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 274
    iget v3, p2, Lcom/android/mail/providers/Attachment;->size:I

    #v3=(Integer);
    invoke-virtual {v1, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setMax(I)V

    .line 275
    iget v3, p2, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    invoke-virtual {v1, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setProgress(I)V

    .line 276
    invoke-virtual {v1, v4}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setIndeterminate(Z)V

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/mail/providers/Attachment;->isDownloadFailed()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 283
    const v3, 0x7f0a00e3

    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 284
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    new-instance v3, Lcom/android/mail/photo/MailPhotoViewActivity$1;

    #v3=(UninitRef);
    invoke-direct {v3, p0, v0, v2}, Lcom/android/mail/photo/MailPhotoViewActivity$1;-><init>(Lcom/android/mail/photo/MailPhotoViewActivity;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    #v3=(Reference);
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const/16 v3, 0x8

    #v3=(PosByte);
    invoke-virtual {v1, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setVisibility(I)V

    .line 296
    :cond_1
    return-void

    .line 277
    :cond_2
    #v3=(Boolean);
    invoke-virtual {p1}, Lcom/android/ex/photo/fragments/PhotoViewFragment;->isProgressBarNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v1, v3}, Lcom/android/ex/photo/views/ProgressBarWrapper;->setIndeterminate(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getCurrentAttachment()Lcom/android/mail/providers/Attachment;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCursorAtProperPosition()Landroid/database/Cursor;

    move-result-object v0

    .line 390
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 391
    const/4 v1, 0x0

    .line 394
    :goto_0
    #v1=(Reference);
    return-object v1

    :cond_0
    #v1=(Uninit);
    new-instance v1, Lcom/android/mail/providers/Attachment;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    #v1=(Reference);
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-virtual {p0, v0}, Lcom/android/mail/photo/MailPhotoViewActivity;->requestWindowFeature(I)Z

    .line 111
    invoke-super {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, v1}, Lcom/android/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/android/mail/browse/AttachmentViewInterface;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    .line 114
    iget-object v0, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 121
    .local v0, inflater:Landroid/view/MenuInflater;
    #v0=(Reference);
    const v1, 0x7f11000b

    #v1=(Integer);
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 122
    iput-object p1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    .line 124
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    #v1=(Reference);
    const v2, 0x7f08018b

    #v2=(Integer);
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mSaveItem:Landroid/view/MenuItem;

    .line 125
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f08018c

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mSaveAllItem:Landroid/view/MenuItem;

    .line 126
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f08018d

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareItem:Landroid/view/MenuItem;

    .line 127
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f08018e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareAllItem:Landroid/view/MenuItem;

    .line 128
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f08018f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mDownloadAgainItem:Landroid/view/MenuItem;

    .line 130
    const/4 v1, 0x1

    #v1=(One);
    return v1
.end method

.method public onCursorChanged(Lcom/android/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V
    .locals 1
    .parameter "fragment"
    .parameter "cursor"

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/PhotoViewActivity;->onCursorChanged(Lcom/android/ex/photo/fragments/PhotoViewFragment;Landroid/database/Cursor;)V

    .line 258
    new-instance v0, Lcom/android/mail/providers/Attachment;

    #v0=(UninitRef);
    invoke-direct {v0, p2}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    #v0=(Reference);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/photo/MailPhotoViewActivity;->updateProgressAndEmptyViews(Lcom/android/ex/photo/fragments/PhotoViewFragment;Lcom/android/mail/providers/Attachment;)V

    .line 259
    return-void
.end method

.method public onFragmentVisible(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity;->onFragmentVisible(Lcom/android/ex/photo/fragments/PhotoViewFragment;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 249
    .local v0, attachment:Lcom/android/mail/providers/Attachment;
    #v0=(Reference);
    iget v1, v0, Lcom/android/mail/providers/Attachment;->state:I

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v1=(Reference);
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 251
    iget-object v1, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    iget v2, v0, Lcom/android/mail/providers/Attachment;->destination:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    .line 253
    :cond_0
    #v1=(Conflicted);
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 193
    #v1=(One);
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 194
    .local v0, itemId:I
    #v0=(Integer);
    const v2, 0x102002c

    #v2=(Integer);
    if-ne v0, v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->finish()V

    .line 214
    :goto_0
    #v1=(Boolean);
    return v1

    .line 198
    :cond_0
    #v1=(One);
    const v2, 0x7f08018b

    if-ne v0, v2, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->saveAttachment()V

    goto :goto_0

    .line 201
    :cond_1
    const v2, 0x7f08018c

    if-ne v0, v2, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->saveAllAttachments()V

    goto :goto_0

    .line 204
    :cond_2
    const v2, 0x7f08018d

    if-ne v0, v2, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->shareAttachment()V

    goto :goto_0

    .line 207
    :cond_3
    const v2, 0x7f08018e

    if-ne v0, v2, :cond_4

    .line 208
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->shareAllAttachments()V

    goto :goto_0

    .line 210
    :cond_4
    const v2, 0x7f08018f

    if-ne v0, v2, :cond_5

    .line 211
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->redownloadAttachment()V

    goto :goto_0

    .line 214
    :cond_5
    invoke-super {p0, p1}, Lcom/android/ex/photo/PhotoViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->updateActionItems()V

    .line 136
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected updateActionBar()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 223
    #v5=(One);
    invoke-super {p0}, Lcom/android/ex/photo/PhotoViewActivity;->updateActionBar()V

    .line 225
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v1

    .line 226
    .local v1, attachment:Lcom/android/mail/providers/Attachment;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 227
    .local v0, actionBar:Landroid/app/ActionBar;
    #v0=(Reference);
    iget v3, v1, Lcom/android/mail/providers/Attachment;->size:I

    #v3=(Integer);
    int-to-long v3, v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {p0, v3, v4}, Lcom/android/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, size:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    #v3=(Reference);
    const v4, 0x7f0a007e

    #v4=(Integer);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->updateActionItems()V

    .line 243
    return-void

    .line 236
    :cond_0
    #v3=(Boolean);v4=(LongHi);v5=(One);v6=(Uninit);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/mail/providers/Attachment;->destination:I

    #v3=(Integer);
    if-ne v3, v5, :cond_1

    .line 238
    const v3, 0x7f0a0084

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(I)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateActionItems()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v8, 0x0

    .line 146
    #v8=(Null);
    invoke-static {}, Lcom/android/mail/utils/Utils;->isRunningJellybeanOrLater()Z

    move-result v5

    .line 147
    .local v5, runningJellyBeanOrLater:Z
    #v5=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getCurrentAttachment()Lcom/android/mail/providers/Attachment;

    move-result-object v1

    .line 149
    .local v1, attachment:Lcom/android/mail/providers/Attachment;
    #v1=(Reference);
    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mSaveItem:Landroid/view/MenuItem;

    #v6=(Reference);
    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareItem:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    .line 150
    iget-object v9, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mSaveItem:Landroid/view/MenuItem;

    #v9=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_6

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_0
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 152
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareItem:Landroid/view/MenuItem;

    #v6=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->canShare()Z

    move-result v9

    #v9=(Boolean);
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 153
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mDownloadAgainItem:Landroid/view/MenuItem;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v9

    if-eqz v9, :cond_7

    :goto_1
    #v7=(Boolean);
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 161
    invoke-direct {p0}, Lcom/android/mail/photo/MailPhotoViewActivity;->getAllAttachments()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Attachment;>;"
    #v2=(Reference);
    if-eqz v2, :cond_4

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, enabled:Z
    #v3=(Null);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v4=(Reference);v6=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 166
    .local v0, a:Lcom/android/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v6

    if-nez v6, :cond_0

    .line 167
    const/4 v3, 0x1

    .line 171
    .end local v0           #a:Lcom/android/mail/providers/Attachment;
    :cond_1
    #v0=(Conflicted);v3=(Boolean);
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mSaveAllItem:Landroid/view/MenuItem;

    #v6=(Reference);
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    const/4 v3, 0x1

    .line 175
    #v3=(One);
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    #v6=(Conflicted);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 176
    .restart local v0       #a:Lcom/android/mail/providers/Attachment;
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canShare()Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    const/4 v3, 0x0

    .line 181
    .end local v0           #a:Lcom/android/mail/providers/Attachment;
    :cond_3
    #v0=(Conflicted);v3=(Boolean);
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareAllItem:Landroid/view/MenuItem;

    #v6=(Reference);
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 185
    .end local v3           #enabled:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    #v3=(Conflicted);v4=(Conflicted);
    if-nez v5, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 187
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mShareAllItem:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 189
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/mail/providers/Attachment;>;"
    :cond_5
    :goto_2
    #v2=(Conflicted);v7=(Integer);v9=(Conflicted);
    return-void

    :cond_6
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Boolean);v7=(One);v9=(Reference);
    move v6, v8

    .line 150
    #v6=(Null);
    goto :goto_0

    :cond_7
    #v6=(Reference);v9=(Boolean);
    move v7, v8

    .line 153
    #v7=(Null);
    goto :goto_1

    .line 155
    :cond_8
    #v6=(Conflicted);v7=(One);v9=(Uninit);
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    #v6=(Reference);
    if-eqz v6, :cond_5

    .line 156
    iget-object v6, p0, Lcom/android/mail/photo/MailPhotoViewActivity;->mMenu:Landroid/view/Menu;

    const v7, 0x7f08018a

    #v7=(Integer);
    invoke-interface {v6, v7, v8}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2
.end method
