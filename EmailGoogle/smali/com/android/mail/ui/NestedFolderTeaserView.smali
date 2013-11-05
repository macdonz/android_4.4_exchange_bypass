.class public Lcom/android/mail/ui/NestedFolderTeaserView;
.super Landroid/widget/LinearLayout;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Lcom/android/mail/ui/ConversationSpecialItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    }
.end annotation


# static fields
.field private static sCollapsedFolderThreshold:I


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

.field private mAnimatedHeight:I

.field private mCollapsed:Z

.field private final mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderItemUpdateDelayMs:I

.field private final mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFolderListUri:Landroid/net/Uri;

.field private final mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/mail/content/ObjectCursor",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListCollapsible:Z

.field private mListUpdated:Z

.field private mListener:Lcom/android/mail/ui/FolderSelector;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mNestedFolderContainer:Landroid/view/ViewGroup;

.field private mShouldDisplayInList:Z

.field private mShowMoreFoldersCountTextView:Landroid/widget/TextView;

.field private mShowMoreFoldersRow:Landroid/view/View;

.field private mShowMoreFoldersTextView:Landroid/widget/TextView;

.field private final mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

.field private final mTabletDevice:Z

.field private mTeaserRightEdge:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    #v0=(Byte);
    sput v0, Lcom/android/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 172
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 176
    const/4 v0, -0x1

    #v0=(Byte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 181
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    #p0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    .line 72
    iput-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 73
    iput-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 75
    new-instance v1, Landroid/support/v4/util/SparseArrayCompat;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    .line 80
    const/4 v1, -0x1

    #v1=(Byte);
    iput v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    .line 92
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    .line 311
    new-instance v1, Lcom/android/mail/ui/NestedFolderTeaserView$2;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/NestedFolderTeaserView$2;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

    .line 451
    new-instance v1, Lcom/android/mail/ui/NestedFolderTeaserView$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/NestedFolderTeaserView$3;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 537
    new-instance v1, Lcom/android/mail/ui/NestedFolderTeaserView$4;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/NestedFolderTeaserView$4;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    sget v1, Lcom/android/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    #v1=(Integer);
    if-gez v1, :cond_0

    .line 186
    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    .line 190
    :cond_0
    const v1, 0x7f0e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderItemUpdateDelayMs:I

    .line 193
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mTabletDevice:Z

    .line 194
    const v1, 0x7f0d0001

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListCollapsible:Z

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/FolderSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListener:Lcom/android/mail/ui/FolderSelector;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/NestedFolderTeaserView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$1000(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mail/ui/NestedFolderTeaserView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderItemUpdateDelayMs:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$1200(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getFolderId(I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$200(Lcom/android/mail/ui/NestedFolderTeaserView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$202(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/AnimatedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/mail/ui/NestedFolderTeaserView;->updateViews(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mail/ui/NestedFolderTeaserView;Ljava/lang/CharSequence;)Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/mail/ui/NestedFolderTeaserView;->createFolderHolder(Ljava/lang/CharSequence;)Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getLoaderId(I)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$800(Lcom/android/mail/ui/NestedFolderTeaserView;)Landroid/app/LoaderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    #v0=(Reference);
    return-object v0
.end method

.method private attachOnClickListener(Landroid/view/View;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 1
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 238
    new-instance v0, Lcom/android/mail/ui/NestedFolderTeaserView$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p2}, Lcom/android/mail/ui/NestedFolderTeaserView$1;-><init>(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method private createFolderHolder(Ljava/lang/CharSequence;)Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    .locals 8
    .parameter "folderName"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v5

    #v5=(Reference);
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04004d

    #v6=(Integer);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, itemView:Landroid/view/View;
    #v3=(Reference);
    const v5, 0x7f080105

    #v5=(Integer);
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/ImageView;

    .line 223
    .local v2, imageView:Landroid/widget/ImageView;
    const v5, 0x7f020066

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 227
    const v5, 0x7f080109

    #v5=(Integer);
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v5, 0x7f08010a

    #v5=(Integer);
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/widget/TextView;

    .line 229
    .local v4, sendersTextView:Landroid/widget/TextView;
    const v5, 0x7f080108

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, countTextView:Landroid/widget/TextView;
    new-instance v1, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    #v1=(UninitRef);
    invoke-direct {v1, v3, v4, v0}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 232
    .local v1, holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    #v1=(Reference);
    invoke-direct {p0, v3, v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->attachOnClickListener(Landroid/view/View;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V

    .line 234
    return-object v1
.end method

.method private static getFolderId(I)I
    .locals 1
    .parameter "loaderId"

    .prologue
    .line 448
    const v0, 0x18a88

    #v0=(Integer);
    sub-int v0, p0, v0

    return v0
.end method

.method private static getLoaderId(I)I
    .locals 1
    .parameter "folderId"

    .prologue
    .line 444
    const v0, 0x18a88

    #v0=(Integer);
    add-int/2addr v0, p0

    return v0
.end method

.method private updateShowMoreView()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    #v8=(PosByte);
    const/4 v10, 0x0

    .line 321
    #v10=(Null);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    .line 322
    .local v4, total:I
    #v4=(Integer);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 323
    .local v0, displayed:I
    #v0=(Integer);
    sub-int v3, v4, v0

    .line 325
    .local v3, notShown:I
    #v3=(Integer);
    if-lez v3, :cond_2

    .line 327
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    const v8, 0x7f0a013d

    #v8=(Integer);
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    #v8=(One);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    const/4 v5, 0x0

    .line 334
    .local v5, unreadCount:I
    #v5=(Null);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v5=(Integer);v6=(Conflicted);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    #v6=(Integer);
    if-ge v2, v6, :cond_1

    .line 335
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    #v6=(Reference);
    invoke-virtual {v6, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 337
    .local v1, holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getItemView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 341
    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v6

    iget v6, v6, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v6=(Integer);
    add-int/2addr v5, v6

    .line 334
    :cond_0
    #v6=(Conflicted);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v1           #holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_1
    #v1=(Conflicted);v6=(Integer);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    #v6=(Reference);
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .end local v2           #i:I
    .end local v5           #unreadCount:I
    :goto_1
    #v2=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 346
    :cond_2
    #v1=(Uninit);v2=(Uninit);v5=(Uninit);v7=(Uninit);v8=(PosByte);v9=(Uninit);
    sget v6, Lcom/android/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    #v6=(Integer);
    if-le v0, v6, :cond_3

    .line 348
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    #v6=(Reference);
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    const v7, 0x7f0a013e

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 353
    :cond_3
    #v6=(Integer);v7=(Uninit);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    #v6=(Reference);
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateViews(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 5
    .parameter "folderHolder"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 360
    .local v0, folder:Lcom/android/mail/providers/Folder;
    #v0=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->getContext()Landroid/content/Context;

    move-result-object v3

    #v3=(Reference);
    iget v4, v0, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v4=(Integer);
    invoke-static {v3, v4}, Lcom/android/mail/utils/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, unreadText:Ljava/lang/String;
    #v2=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getCountTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    const-string v2, "0"

    .end local v2           #unreadText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const-string v3, ", "

    invoke-virtual {p1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getUnreadSenders()Ljava/util/List;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, sendersText:Ljava/lang/String;
    #v1=(Reference);
    invoke-virtual {p1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getSendersTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    return-void
.end method


# virtual methods
.method public acceptsUserTaps()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public bind(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/FolderSelector;)V
    .locals 0
    .parameter "account"
    .parameter "listener"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAccount:Lcom/android/mail/providers/Account;

    .line 212
    iput-object p2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListener:Lcom/android/mail/ui/FolderSelector;

    .line 213
    return-void
.end method

.method public bindFragment(Landroid/app/LoaderManager;Landroid/os/Bundle;)V
    .locals 2
    .parameter "loaderManager"
    .parameter "savedInstanceState"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    const-string v1, "This view has already been bound to a LoaderManager."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 388
    :cond_0
    #v1=(Uninit);
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    .line 389
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getShouldDisplayInList()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    #v0=(Boolean);
    return v0
.end method

.method public onCabModeEntered()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public onCabModeExited()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onConversationListVisibilityChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 414
    return-void
.end method

.method public onConversationSelected()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 199
    const v0, 0x7f080110

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    .line 200
    const v0, 0x7f080140

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    .line 202
    const v0, 0x7f080111

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersRow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreOnClickListener:Landroid/view/View$OnClickListener;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f080112

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersTextView:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f080113

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShowMoreFoldersCountTextView:Landroid/widget/TextView;

    .line 208
    return-void
.end method

.method public onGetView()V
    .locals 8

    .prologue
    .line 278
    iget-boolean v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    #v6=(Boolean);
    if-eqz v6, :cond_3

    .line 280
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    new-instance v3, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    #v3=(UninitRef);
    sget-object v6, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v3, v6}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    .line 287
    .local v3, folderHoldersBuilder:Lcom/google/common/collect/ImmutableSortedSet$Builder;,"Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    #v3=(Reference);
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    #v4=(Integer);
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    #v6=(Integer);
    if-ge v4, v6, :cond_0

    .line 288
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderHolders:Landroid/support/v4/util/SparseArrayCompat;

    #v6=(Reference);
    invoke-virtual {v6, v4}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_0
    #v6=(Integer);
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 294
    .local v2, folderHolders:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    #v2=(Reference);
    const/4 v0, 0x0

    .line 295
    .local v0, added:I
    #v0=(Null);
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Integer);v1=(Conflicted);v5=(Reference);v7=(Conflicted);
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .line 296
    .local v1, folderHolder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    iget-object v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mNestedFolderContainer:Landroid/view/ViewGroup;

    #v6=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getItemView()Landroid/view/View;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 299
    sget v6, Lcom/android/mail/ui/NestedFolderTeaserView;->sCollapsedFolderThreshold:I

    #v6=(Integer);
    if-lt v0, v6, :cond_1

    iget-boolean v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mCollapsed:Z

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 305
    .end local v1           #folderHolder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
    :cond_2
    #v1=(Conflicted);v7=(Conflicted);
    invoke-direct {p0}, Lcom/android/mail/ui/NestedFolderTeaserView;->updateShowMoreView()V

    .line 307
    const/4 v6, 0x0

    #v6=(Null);
    iput-boolean v6, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListUpdated:Z

    .line 309
    .end local v0           #added:I
    .end local v2           #folderHolders:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .end local v3           #folderHoldersBuilder:Lcom/google/common/collect/ImmutableSortedSet$Builder;,"Lcom/google/common/collect/ImmutableSortedSet$Builder<Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;>;"
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mTabletDevice:Z

    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mListCollapsible:Z

    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/AnimatedAdapter;->getViewMode()I

    move-result v2

    #v2=(Integer);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/Utils;->getDisplayListRightEdgeEffect(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :goto_0
    #v1=(PosByte);
    iget v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 437
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 441
    :goto_1
    #v1=(Integer);
    return-void

    .line 433
    :cond_0
    #v0=(Boolean);v1=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mTeaserRightEdge:Landroid/view/View;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 439
    :cond_1
    #v0=(Integer);v1=(Byte);
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAnimatedHeight:I

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onUpdate(Lcom/android/mail/providers/Folder;Lcom/android/mail/browse/ConversationCursor;)V
    .locals 5
    .parameter "folder"
    .parameter "cursor"

    .prologue
    const v4, 0x18a88

    .line 248
    #v4=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    .line 250
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 254
    :cond_1
    #v0=(Uninit);v1=(Null);v2=(Uninit);v3=(Uninit);
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    .line 255
    .local v0, folderListUri:Landroid/net/Uri;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAccount:Lcom/android/mail/providers/Account;

    #v1=(Reference);
    const/high16 v2, 0x80

    #v2=(Integer);
    invoke-virtual {v1, v2}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    #v1=(Reference);
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/mail/providers/Folder;->childFoldersListUri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    .line 266
    :cond_2
    #v1=(Conflicted);v2=(Conflicted);
    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListUri:Landroid/net/Uri;

    .line 269
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    #v1=(Reference);
    invoke-virtual {v1, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 270
    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mFolderListLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #v3=(Reference);
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 273
    :cond_3
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mShouldDisplayInList:Z

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 419
    return-void
.end method

.method public setAdapter(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView;->mAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    .line 380
    return-void
.end method
