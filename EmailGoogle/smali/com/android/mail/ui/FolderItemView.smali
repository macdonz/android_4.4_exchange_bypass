.class public Lcom/android/mail/ui/FolderItemView;
.super Landroid/widget/RelativeLayout;
.source "FolderItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/FolderItemView$DropHandler;
    }
.end annotation


# static fields
.field private static final STATE_DRAG_MODE:[I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private mFolderParentIcon:Landroid/widget/ImageView;

.field private mFolderTextView:Landroid/widget/TextView;

.field private mIsDragMode:Z

.field private mUnreadCountTextView:Landroid/widget/TextView;

.field private mUnseenCountTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [I

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const v2, 0x7f010014

    #v2=(Integer);
    aput v2, v0, v1

    sput-object v0, Lcom/android/mail/ui/FolderItemView;->STATE_DRAG_MODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    #p0=(Reference);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    #p0=(Reference);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    #p0=(Reference);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderItemView;->mIsDragMode:Z

    .line 80
    return-void
.end method

.method public static areSameViews(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Folder;)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 99
    #v1=(Null);
    if-nez p0, :cond_2

    .line 100
    if-nez p1, :cond_1

    :goto_0
    #v0=(Boolean);
    move v1, v0

    .line 106
    :cond_0
    :goto_1
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    :cond_1
    #v0=(One);v1=(Null);v2=(Uninit);v3=(Uninit);
    move v0, v1

    .line 100
    #v0=(Null);
    goto :goto_0

    .line 102
    :cond_2
    #v0=(One);
    if-eqz p1, :cond_0

    .line 106
    if-eq p0, p1, :cond_3

    iget-object v2, p0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    iget-object v3, p1, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v2=(Reference);
    iget-object v3, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/mail/providers/Folder;->hasChildren:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Folder;->hasChildren:Z

    #v3=(Boolean);
    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/mail/providers/Folder;->unseenCount:I

    #v2=(Integer);
    iget v3, p1, Lcom/android/mail/providers/Folder;->unseenCount:I

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/mail/providers/Folder;->unreadCount:I

    iget v3, p1, Lcom/android/mail/providers/Folder;->unreadCount:I

    if-ne v2, v3, :cond_0

    :cond_3
    #v2=(Conflicted);v3=(Conflicted);
    move v1, v0

    #v1=(One);
    goto :goto_1
.end method

.method private isDroppableTarget(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    invoke-interface {v0, p1, v1}, Lcom/android/mail/ui/FolderItemView$DropHandler;->supportsDrag(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v1=(Conflicted);
    return v0

    :cond_0
    #v0=(Conflicted);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private setDragMode(Z)V
    .locals 0
    .parameter "isDragMode"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/mail/ui/FolderItemView;->mIsDragMode:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->refreshDrawableState()V

    .line 233
    return-void
.end method

.method private setUnreadCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    #v1=(Reference);
    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    if-lez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    #v0=(Conflicted);
    return-void

    .line 151
    :cond_1
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method private setUnseenCount(II)V
    .locals 2
    .parameter "color"
    .parameter "count"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    #v1=(Reference);
    if-lez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    if-lez p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    #v0=(Conflicted);
    return-void

    .line 161
    :cond_1
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mail/providers/Folder;Lcom/android/mail/ui/FolderItemView$DropHandler;Landroid/support/v4/text/BidiFormatter;)V
    .locals 3
    .parameter "folder"
    .parameter "dropHandler"
    .parameter "bidiFormatter"

    .prologue
    const/16 v1, 0x8

    .line 115
    #v1=(PosByte);
    iput-object p1, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 116
    iput-object p2, p0, Lcom/android/mail/ui/FolderItemView;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    .line 118
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    #v0=(Reference);
    iget-object v2, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {p3, v2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/android/mail/ui/FolderItemView;->mFolderParentIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    iget-boolean v0, v0, Lcom/android/mail/providers/Folder;->hasChildren:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    iget v0, v0, Lcom/android/mail/providers/Folder;->unseenCount:I

    #v0=(Integer);
    if-lez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    const/high16 v1, -0x100

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/providers/Folder;->unseenCount:I

    #v1=(Integer);
    invoke-direct {p0, v0, v1}, Lcom/android/mail/ui/FolderItemView;->setUnseenCount(II)V

    .line 128
    :goto_1
    return-void

    :cond_0
    #v0=(Boolean);v1=(PosByte);
    move v0, v1

    .line 120
    #v0=(PosByte);
    goto :goto_0

    .line 125
    :cond_1
    #v0=(Integer);
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/utils/Utils;->getFolderUnreadDisplayCount(Lcom/android/mail/providers/Folder;)I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/FolderItemView;->setUnreadCount(I)V

    goto :goto_1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 223
    add-int/lit8 v1, p1, 0x1

    #v1=(Integer);
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 224
    .local v0, drawableState:[I
    #v0=(Reference);
    iget-boolean v1, p0, Lcom/android/mail/ui/FolderItemView;->mIsDragMode:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/android/mail/ui/FolderItemView;->STATE_DRAG_MODE:[I

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/ui/FolderItemView;->mergeDrawableStates([I[I)[I

    .line 227
    :cond_0
    #v1=(Conflicted);
    return-object v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 189
    #v0=(One);
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 218
    :goto_0
    :pswitch_0
    #v0=(Boolean);v1=(Reference);v2=(Conflicted);
    return v0

    .line 195
    :pswitch_1
    #v0=(One);v1=(Null);v2=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/FolderItemView;->setDragMode(Z)V

    .line 200
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 204
    :pswitch_3
    #v0=(One);
    invoke-direct {p0, v1}, Lcom/android/mail/ui/FolderItemView;->setDragMode(Z)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v2, p0, Lcom/android/mail/ui/FolderItemView;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    #v2=(Reference);
    if-nez v2, :cond_0

    move v0, v1

    .line 212
    #v0=(Null);
    goto :goto_0

    .line 215
    :cond_0
    #v0=(One);
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mDropHandler:Lcom/android/mail/ui/FolderItemView$DropHandler;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/FolderItemView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-interface {v1, p1, v2}, Lcom/android/mail/ui/FolderItemView$DropHandler;->handleDrop(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)V

    goto :goto_0

    .line 189
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x7f080029

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f080028

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f080077

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mUnseenCountTextView:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f080075

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mFolderParentIcon:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method public final overrideUnreadCount(I)V
    .locals 5
    .parameter "count"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "FLF->FolderItem.getFolderView: unread count mismatch found (%s vs %d)"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/FolderItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderItemView;->setUnreadCount(I)V

    .line 176
    return-void
.end method

.method public setIcon(Lcom/android/mail/providers/Folder;)V
    .locals 5
    .parameter "folder"

    .prologue
    const/4 v4, 0x0

    .line 135
    #v4=(Null);
    const v1, 0x7f080078

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, folderIconView:Landroid/widget/ImageView;
    invoke-static {p1, v0}, Lcom/android/mail/providers/Folder;->setIcon(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 137
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    #v2=(PosByte);
    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    :goto_0
    #v3=(Conflicted);
    return-void

    .line 143
    :cond_0
    #v1=(Integer);v2=(PosByte);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->mFolderTextView:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
