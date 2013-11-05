.class Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderHolder"
.end annotation


# static fields
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountTextView:Landroid/widget/TextView;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private final mItemView:Landroid/view/View;

.field private final mSendersTextView:Landroid/widget/TextView;

.field private mUnreadSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .parameter "itemView"
    .parameter "sendersTextView"
    .parameter "countTextView"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    .line 126
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mItemView:Landroid/view/View;

    .line 127
    iput-object p2, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mSendersTextView:Landroid/widget/TextView;

    .line 128
    iput-object p3, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mCountTextView:Landroid/widget/TextView;

    .line 129
    return-void
.end method

.method static synthetic access$1300(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public getCountTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mCountTextView:Landroid/widget/TextView;

    #v0=(Reference);
    return-object v0
.end method

.method public getFolder()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method

.method public getItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mItemView:Landroid/view/View;

    #v0=(Reference);
    return-object v0
.end method

.method public getSendersTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mSendersTextView:Landroid/widget/TextView;

    #v0=(Reference);
    return-object v0
.end method

.method public getUnreadSenders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    #v0=(Reference);
    return-object v0
.end method

.method public setFolder(Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "folder"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mFolder:Lcom/android/mail/providers/Folder;

    .line 133
    return-void
.end method

.method public setUnreadSenders(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, unreadSenders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->mUnreadSenders:Ljava/util/List;

    .line 160
    return-void
.end method
