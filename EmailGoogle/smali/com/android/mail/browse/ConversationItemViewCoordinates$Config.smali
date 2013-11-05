.class public final Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
.super Ljava/lang/Object;
.source "ConversationItemViewCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemViewCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private mAttachmentPreviewMode:I

.field private mGadgetMode:I

.field private mShowColorBlock:Z

.field private mShowFolders:Z

.field private mShowPersonalIndicator:Z

.field private mShowReplyState:Z

.field private mViewMode:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    #v0=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    #p0=(Reference);
    iput v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    .line 77
    iput v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    .line 78
    iput v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    .line 79
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowReplyState:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->getCacheKey()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private getCacheKey()I
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x7

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowReplyState:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    #v2=(Boolean);
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method


# virtual methods
.method public areFoldersVisible()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    #v0=(Boolean);
    return v0
.end method

.method public getAttachmentPreviewMode()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    #v0=(Integer);
    return v0
.end method

.method public getGadgetMode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    #v0=(Integer);
    return v0
.end method

.method public getViewMode()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    #v0=(Integer);
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    #v0=(Integer);
    return v0
.end method

.method public isColorBlockVisible()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    #v0=(Boolean);
    return v0
.end method

.method public isPersonalIndicatorVisible()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    #v0=(Boolean);
    return v0
.end method

.method public isReplyStateVisible()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowReplyState:Z

    #v0=(Boolean);
    return v0
.end method

.method public setViewMode(I)Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .parameter "viewMode"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mViewMode:I

    .line 86
    return-object p0
.end method

.method public showColorBlock()Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowColorBlock:Z

    .line 111
    return-object p0
.end method

.method public showFolders()Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowFolders:Z

    .line 101
    return-object p0
.end method

.method public showPersonalIndicator()Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowPersonalIndicator:Z

    .line 116
    return-object p0
.end method

.method public showReplyState()Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mShowReplyState:Z

    .line 106
    return-object p0
.end method

.method public updateWidth(I)Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .parameter "width"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mWidth:I

    .line 121
    return-object p0
.end method

.method public withAttachmentPreviews(I)Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .parameter "attachmentPreviewMode"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mAttachmentPreviewMode:I

    .line 96
    return-object p0
.end method

.method public withGadget(I)Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;
    .locals 0
    .parameter "gadget"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mail/browse/ConversationItemViewCoordinates$Config;->mGadgetMode:I

    .line 91
    return-object p0
.end method
