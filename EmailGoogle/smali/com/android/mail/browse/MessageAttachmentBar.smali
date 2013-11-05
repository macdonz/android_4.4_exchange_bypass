.class public Lcom/android/mail/browse/MessageAttachmentBar;
.super Landroid/widget/FrameLayout;
.source "MessageAttachmentBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/mail/browse/AttachmentViewInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountUri:Landroid/net/Uri;

.field private final mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

.field private mAttachment:Lcom/android/mail/providers/Attachment;

.field private mAttachmentSizeText:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mDisplayType:Ljava/lang/String;

.field private mOverflowButton:Landroid/widget/ImageView;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSaveClicked:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageAttachmentBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/MessageAttachmentBar$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/MessageAttachmentBar$1;-><init>(Lcom/android/mail/browse/MessageAttachmentBar;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p0}, Lcom/android/mail/browse/AttachmentActionHandler;-><init>(Landroid/content/Context;Lcom/android/mail/browse/AttachmentViewInterface;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/MessageAttachmentBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->updateActionsInternal()V

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/mail/browse/MessageAttachmentBar;
    .locals 3
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 100
    const v1, 0x7f04002f

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageAttachmentBar;

    .line 102
    .local v0, view:Lcom/android/mail/browse/MessageAttachmentBar;
    return-object v0
.end method

.method private onClick(ILandroid/view/View;)Z
    .locals 13
    .parameter "res"
    .parameter "v"

    .prologue
    const v12, 0x7f080187

    #v12=(Integer);
    const v11, 0x7f080186

    #v11=(Integer);
    const v10, 0x7f080185

    #v10=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    const/4 v5, 0x0

    .line 173
    #v5=(Null);
    if-ne p1, v10, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->previewAttachment()V

    .line 286
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v9

    .line 175
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    if-ne p1, v11, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, v9}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    .line 178
    iput-boolean v9, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    .line 180
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "save_attachment"

    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "attachment_bar"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 184
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    if-ne p1, v12, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentActionHandler;->showDownloadingDialog()V

    .line 187
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/AttachmentActionHandler;->startRedownloadingAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 189
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "redownload_attachment"

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "attachment_bar"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 193
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    const v0, 0x7f0800bc

    #v0=(Integer);
    if-ne p1, v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentActionHandler;->cancelAttachment()V

    .line 195
    iput-boolean v5, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    .line 197
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "cancel_attachment"

    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "attachment_bar"

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 200
    :cond_4
    #v0=(Integer);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);
    const v0, 0x7f0800bb

    if-ne p1, v0, :cond_6

    .line 204
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowOverflow()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    #v0=(Reference);
    if-nez v0, :cond_5

    .line 206
    new-instance v0, Landroid/widget/PopupMenu;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    .line 207
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110009

    #v1=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 212
    :cond_5
    #v1=(Conflicted);v4=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    .line 213
    .local v8, menu:Landroid/view/Menu;
    #v8=(Reference);
    invoke-interface {v8, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowPreview()Z

    move-result v1

    #v1=(Boolean);
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    invoke-interface {v8, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowSave()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    invoke-interface {v8, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowDownloadAgain()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 224
    .end local v8           #menu:Landroid/view/Menu;
    :cond_6
    #v0=(Integer);v1=(Uninit);v4=(Uninit);v8=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, mime:Ljava/lang/String;
    #v2=(Reference);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->flags:I

    #v0=(Integer);
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    .line 229
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentActionHandler;->showDownloadingDialog()V

    .line 230
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/AttachmentActionHandler;->setViewOnFinish(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    invoke-virtual {v0, v5}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    .line 233
    const/4 v3, 0x0

    .line 280
    .local v3, action:Ljava/lang/String;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    if-eqz v3, :cond_0

    .line 281
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "view_attachment"

    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 236
    .end local v3           #action:Ljava/lang/String;
    :cond_7
    #v0=(Integer);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_8

    .line 237
    new-instance v6, Landroid/app/AlertDialog$Builder;

    #v6=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    #v6=(Reference);
    const v7, 0x7f0a007a

    .line 239
    .local v7, dialogMessage:I
    #v7=(Integer);
    const v0, 0x7f0a0079

    #v0=(Integer);
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 243
    const-string v3, "attachment_bar_blocked"

    .line 244
    .restart local v3       #action:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_1

    .line 246
    .end local v3           #action:Ljava/lang/String;
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    .end local v7           #dialogMessage:I
    :cond_8
    #v0=(Boolean);v3=(Uninit);v6=(Uninit);v7=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/MimeType;->isInstallable(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_9

    .line 251
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, v9}, Lcom/android/mail/browse/AttachmentActionHandler;->showAttachment(I)V

    .line 253
    const-string v3, "attachment_bar_install"

    .restart local v3       #action:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_1

    .line 257
    .end local v3           #action:Ljava/lang/String;
    :cond_9
    #v0=(Boolean);v3=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/android/mail/utils/MimeType;->isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_a

    .line 259
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, v5}, Lcom/android/mail/browse/AttachmentActionHandler;->showAttachment(I)V

    .line 261
    const-string v3, "attachment_bar"

    .restart local v3       #action:Ljava/lang/String;
    #v3=(Reference);
    goto :goto_1

    .line 264
    .end local v3           #action:Ljava/lang/String;
    :cond_a
    #v0=(Boolean);v3=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canPreview()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_b

    .line 265
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->previewAttachment()V

    .line 267
    const/4 v3, 0x0

    .restart local v3       #action:Ljava/lang/String;
    #v3=(Null);
    goto :goto_1

    .line 271
    .end local v3           #action:Ljava/lang/String;
    :cond_b
    #v3=(Uninit);
    new-instance v6, Landroid/app/AlertDialog$Builder;

    #v6=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .restart local v6       #builder:Landroid/app/AlertDialog$Builder;
    #v6=(Reference);
    const v7, 0x7f0a007b

    .line 273
    .restart local v7       #dialogMessage:I
    #v7=(Integer);
    const v0, 0x7f0a0079

    #v0=(Integer);
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 277
    const-string v3, "attachment_bar_no_viewer"

    .restart local v3       #action:Ljava/lang/String;
    #v3=(Reference);
    goto/16 :goto_1
.end method

.method private previewAttachment()V
    .locals 7

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canPreview()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 345
    new-instance v6, Landroid/content/Intent;

    #v6=(UninitRef);
    const-string v0, "android.intent.action.VIEW"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Attachment;->previewIntentUri:Landroid/net/Uri;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    .local v6, previewIntent:Landroid/content/Intent;
    #v6=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 349
    invoke-static {}, Lcom/android/mail/analytics/Analytics;->getInstance()Lcom/android/mail/analytics/Tracker;

    move-result-object v0

    const-string v1, "preview_attachment"

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v4=(Reference);
    iget v4, v4, Lcom/android/mail/providers/Attachment;->size:I

    #v4=(Integer);
    int-to-long v4, v4

    #v4=(LongLo);v5=(LongHi);
    invoke-interface/range {v0 .. v5}, Lcom/android/mail/analytics/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 353
    .end local v6           #previewIntent:Landroid/content/Intent;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method private static setButtonVisible(Landroid/view/View;Z)V
    .locals 1
    .parameter "button"
    .parameter "visible"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void

    .line 356
    :cond_0
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method private shouldShowCancel()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private shouldShowDownloadAgain()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->supportsDownloadAgain()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isDownloadFinishedOrFailed()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private shouldShowOverflow()Z
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowPreview()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowSave()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowDownloadAgain()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowCancel()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private shouldShowPreview()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canPreview()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private shouldShowSave()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->canSave()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private updateActions()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mUpdateRunnable:Ljava/lang/Runnable;

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private updateActionsInternal()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentActionHandler;->isProgressDialogVisible()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 377
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 375
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mCancelButton:Landroid/widget/ImageButton;

    #v0=(Reference);
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowCancel()Z

    move-result v1

    #v1=(Boolean);
    invoke-static {v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->setButtonVisible(Landroid/view/View;Z)V

    .line 376
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mOverflowButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->shouldShowOverflow()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->setButtonVisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private updateSubtitleText()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 401
    #v3=(One);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Attachment;->state:I

    #v1=(Integer);
    if-ne v1, v3, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0a007f

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 405
    :cond_1
    #v1=(Integer);v2=(Uninit);v3=(One);v4=(Uninit);v5=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->isSavedToExternal()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f0a007e

    #v2=(Integer);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 411
    const/16 v1, 0x20

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_2
    #v1=(Boolean);v2=(Uninit);v3=(One);v4=(Uninit);v5=(Uninit);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public initialize(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fragmentManager"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/AttachmentActionHandler;->initialize(Landroid/app/FragmentManager;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, v0, p1}, Lcom/android/mail/browse/MessageAttachmentBar;->onClick(ILandroid/view/View;)Z

    .line 164
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    const v0, 0x7f0800b8

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0800b9

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0800ba

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    .line 153
    const v0, 0x7f0800bb

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mOverflowButton:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0800bc

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageAttachmentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mCancelButton:Landroid/widget/ImageButton;

    .line 156
    invoke-virtual {p0, p0}, Lcom/android/mail/browse/MessageAttachmentBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mOverflowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mPopup:Landroid/widget/PopupMenu;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1}, Lcom/android/mail/browse/MessageAttachmentBar;->onClick(ILandroid/view/View;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onUpdateStatus()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->updateSubtitleText()V

    .line 382
    return-void
.end method

.method public render(Lcom/android/mail/providers/Attachment;Landroid/net/Uri;Z)V
    .locals 6
    .parameter "attachment"
    .parameter "accountUri"
    .parameter "loaderResult"

    .prologue
    const/4 v2, 0x0

    .line 112
    #v2=(Null);
    iput-object p2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAccountUri:Landroid/net/Uri;

    .line 114
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 115
    .local v0, prevAttachment:Lcom/android/mail/providers/Attachment;
    #v0=(Reference);
    iput-object p1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 116
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v1=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    invoke-virtual {v1, v3}, Lcom/android/mail/browse/AttachmentActionHandler;->setAttachment(Lcom/android/mail/providers/Attachment;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    .line 123
    sget-object v1, Lcom/android/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v3, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d"

    const/4 v4, 0x7

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    const/4 v2, 0x1

    #v2=(One);
    iget v5, p1, Lcom/android/mail/providers/Attachment;->state:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    const/4 v2, 0x2

    #v2=(PosByte);
    iget v5, p1, Lcom/android/mail/providers/Attachment;->destination:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget v5, p1, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p1, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    aput-object v5, v4, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget v5, p1, Lcom/android/mail/providers/Attachment;->flags:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    iget v1, p1, Lcom/android/mail/providers/Attachment;->flags:I

    #v1=(Integer);
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    #v1=(Reference);
    const v2, 0x7f0a00db

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    :cond_0
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/mail/providers/Attachment;->size:I

    #v1=(Integer);
    iget v2, v0, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    if-eq v1, v2, :cond_2

    .line 136
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    iget v2, p1, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachmentSizeText:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mail/utils/AttachmentUtils;->getDisplayType(Landroid/content/Context;Lcom/android/mail/providers/Attachment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mDisplayType:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->updateSubtitleText()V

    .line 142
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->updateActions()V

    .line 143
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mActionHandler:Lcom/android/mail/browse/AttachmentActionHandler;

    #v1=(Reference);
    invoke-virtual {v1, p3}, Lcom/android/mail/browse/AttachmentActionHandler;->updateStatus(Z)V

    .line 144
    return-void

    .line 121
    :cond_3
    #v1=(Boolean);v2=(Null);v3=(Reference);v4=(Uninit);v5=(Uninit);
    iget-boolean v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSaveClicked:Z

    goto :goto_0

    .line 130
    :cond_4
    #v1=(Integer);v2=(PosByte);v4=(Reference);v5=(Reference);
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 132
    :cond_5
    #v1=(Integer);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mTitle:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public updateProgress(Z)V
    .locals 4
    .parameter "showProgress"

    .prologue
    const/4 v3, 0x4

    #v3=(PosByte);
    const/4 v1, 0x0

    .line 386
    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isDownloading()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v2=(Reference);
    iget v2, v2, Lcom/android/mail/providers/Attachment;->size:I

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 388
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v2=(Reference);
    iget v2, v2, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 389
    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    #v2=(Reference);
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 390
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :goto_1
    #v2=(Conflicted);
    return-void

    :cond_0
    #v2=(Reference);
    move v0, v1

    .line 389
    #v0=(Null);
    goto :goto_0

    .line 393
    :cond_1
    #v0=(Boolean);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mProgress:Landroid/widget/ProgressBar;

    #v0=(Reference);
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public viewAttachment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Lcom/android/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    const-string v1, "viewAttachment with null content uri"

    #v1=(Reference);
    new-array v2, v3, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 341
    :goto_0
    #v3=(Reference);
    return-void

    .line 320
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Null);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.VIEW"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    #v0=(Reference);
    const v1, 0x80001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v0, v2, v1}, Lcom/android/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-static {v1}, Lcom/android/mail/utils/MimeType;->isEmlMimeType(Ljava/lang/String;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    const-class v2, Lcom/android/mail/browse/EmlViewerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 332
    const-string v1, "extra-account-uri"

    iget-object v2, p0, Lcom/android/mail/browse/MessageAttachmentBar;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    :cond_1
    :try_start_0
    #v1=(Conflicted);
    invoke-virtual {p0}, Lcom/android/mail/browse/MessageAttachmentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    #v1=(Conflicted);
    move-exception v0

    .line 339
    sget-object v1, Lcom/android/mail/browse/MessageAttachmentBar;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Couldn\'t find Activity for intent"

    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
