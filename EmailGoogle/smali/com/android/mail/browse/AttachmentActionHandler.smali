.class public Lcom/android/mail/browse/AttachmentActionHandler;
.super Ljava/lang/Object;
.source "AttachmentActionHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAttachment:Lcom/android/mail/providers/Attachment;

.field private final mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

.field private final mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mView:Lcom/android/mail/browse/AttachmentViewInterface;

.field private mViewOnFinish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/AttachmentActionHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/AttachmentViewInterface;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/AttachmentCommandHandler;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/mail/browse/AttachmentCommandHandler;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    .line 61
    iput-object p2, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    .line 62
    iput-object p1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/os/Handler;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    .line 65
    return-void
.end method

.method private startDownloadingAttachment(Lcom/android/mail/providers/Attachment;IIIZ)V
    .locals 3
    .parameter "attachment"
    .parameter "destination"
    .parameter "rendition"
    .parameter "additionalPriority"
    .parameter "delayDownload"

    .prologue
    .line 113
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 114
    .local v0, params:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "state"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v1, "destination"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "rendition"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v1, "additionalPriority"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v1, "delayDownload"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 121
    return-void
.end method


# virtual methods
.method public cancelAttachment()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v0, params:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "state"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    iget-object v2, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 128
    return-void
.end method

.method public initialize(Landroid/app/FragmentManager;)V
    .locals 0
    .parameter "fragmentManager"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    .line 69
    return-void
.end method

.method public isProgressDialogVisible()Z
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    #v1=(Reference);
    const-string v2, "attachment-progress"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 199
    .local v0, dialog:Landroid/app/Fragment;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public setAttachment(Lcom/android/mail/providers/Attachment;)V
    .locals 0
    .parameter "attachment"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    .line 73
    return-void
.end method

.method public setViewOnFinish(Z)V
    .locals 0
    .parameter "viewOnFinish"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    .line 77
    return-void
.end method

.method public shareAttachment()V
    .locals 7

    .prologue
    .line 203
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 221
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 207
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    const v3, 0x80001

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/providers/Attachment;->contentUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->normalizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 212
    .local v2, uri:Landroid/net/Uri;
    #v2=(Reference);
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/content/ActivityNotFoundException;
    #v0=(Reference);
    sget-object v3, Lcom/android/mail/browse/AttachmentActionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t find Activity for intent"

    #v4=(Reference);
    const/4 v5, 0x1

    #v5=(One);
    new-array v5, v5, [Ljava/lang/Object;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public shareAttachments(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Landroid/content/Intent;

    #v1=(UninitRef);
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    #v2=(Reference);
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, intent:Landroid/content/Intent;
    #v1=(Reference);
    const v2, 0x80001

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    const-string v2, "image/*"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    #v0=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 234
    :catch_0
    #v0=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    move-exception v0

    .line 236
    .local v0, e:Landroid/content/ActivityNotFoundException;
    #v0=(Reference);
    sget-object v2, Lcom/android/mail/browse/AttachmentActionHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t find Activity for intent"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public showAttachment(I)V
    .locals 1
    .parameter "destination"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 94
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 86
    :cond_0
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->isPresentLocally()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Attachment;->destination:I

    #v0=(Integer);
    if-ne v0, p1, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/browse/AttachmentViewInterface;->viewAttachment()V

    goto :goto_0

    .line 91
    :cond_2
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/browse/AttachmentActionHandler;->showDownloadingDialog()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(I)V

    goto :goto_0
.end method

.method public showDownloadingDialog()V
    .locals 5

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 144
    .local v0, ft:Landroid/app/FragmentTransaction;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "attachment-progress"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 145
    .local v2, prev:Landroid/app/Fragment;
    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 148
    :cond_0
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 151
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->newInstance(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/browse/AttachmentProgressDialogFragment;

    move-result-object v1

    .line 153
    .local v1, newFragment:Landroid/app/DialogFragment;
    #v1=(Reference);
    const-string v3, "attachment-progress"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public startDownloadingAttachment(I)V
    .locals 2
    .parameter "destination"

    .prologue
    const/4 v1, 0x0

    .line 101
    #v1=(Null);
    const/4 v0, 0x1

    #v0=(One);
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(IIIZ)V

    .line 102
    return-void
.end method

.method public startDownloadingAttachment(IIIZ)V
    .locals 6
    .parameter "destination"
    .parameter "rendition"
    .parameter "additionalPriority"
    .parameter "delayDownload"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v1=(Reference);
    move-object v0, p0

    #v0=(Reference);
    move v2, p1

    #v2=(Integer);
    move v3, p2

    #v3=(Integer);
    move v4, p3

    #v4=(Integer);
    move v5, p4

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/AttachmentActionHandler;->startDownloadingAttachment(Lcom/android/mail/providers/Attachment;IIIZ)V

    .line 108
    return-void
.end method

.method public startRedownloadingAttachment(Lcom/android/mail/providers/Attachment;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 131
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 132
    .local v0, params:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "state"

    #v1=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v1, "destination"

    iget v2, p1, Lcom/android/mail/providers/Attachment;->destination:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    iget-object v1, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mCommandHandler:Lcom/android/mail/browse/AttachmentCommandHandler;

    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/AttachmentCommandHandler;->sendCommand(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 136
    return-void
.end method

.method public updateStatus(Z)V
    .locals 5
    .parameter "loaderResult"

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v3=(Reference);
    if-nez v3, :cond_0

    .line 195
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    return-void

    .line 165
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->shouldShowProgress()Z

    move-result v2

    .line 167
    .local v2, showProgress:Z
    #v2=(Boolean);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "attachment-progress"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/AttachmentProgressDialogFragment;

    .line 169
    .local v0, dialog:Lcom/android/mail/browse/AttachmentProgressDialogFragment;
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v3}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->isShowingDialogForAttachment(Lcom/android/mail/providers/Attachment;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    iget v3, v3, Lcom/android/mail/providers/Attachment;->downloadedSize:I

    #v3=(Integer);
    invoke-virtual {v0, v3}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->setProgress(I)V

    .line 174
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->isIndeterminate()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 175
    .local v1, indeterminate:Z
    :goto_1
    #v1=(Boolean);v3=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/AttachmentProgressDialogFragment;->setIndeterminate(Z)V

    .line 177
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->isDownloadFinishedOrFailed()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mHandler:Landroid/os/Handler;

    #v3=(Reference);
    new-instance v4, Lcom/android/mail/browse/AttachmentActionHandler$1;

    #v4=(UninitRef);
    invoke-direct {v4, p0, v0}, Lcom/android/mail/browse/AttachmentActionHandler$1;-><init>(Lcom/android/mail/browse/AttachmentActionHandler;Lcom/android/mail/browse/AttachmentProgressDialogFragment;)V

    #v4=(Reference);
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_1
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mAttachment:Lcom/android/mail/providers/Attachment;

    #v3=(Reference);
    iget v3, v3, Lcom/android/mail/providers/Attachment;->state:I

    #v3=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mViewOnFinish:Z

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/browse/AttachmentViewInterface;->viewAttachment()V

    .line 194
    .end local v1           #indeterminate:Z
    :cond_2
    :goto_2
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/browse/AttachmentViewInterface;->onUpdateStatus()V

    goto :goto_0

    .line 174
    :cond_3
    #v1=(Uninit);v3=(Integer);v4=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 190
    :cond_4
    #v1=(Uninit);v3=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/AttachmentActionHandler;->mView:Lcom/android/mail/browse/AttachmentViewInterface;

    #v3=(Reference);
    invoke-interface {v3, v2}, Lcom/android/mail/browse/AttachmentViewInterface;->updateProgress(Z)V

    goto :goto_2
.end method
