.class Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;
.super Lcom/android/mail/ui/FolderDisplayer;
.source "ConversationViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationFolderDisplayer"
.end annotation


# instance fields
.field private mDims:Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;)V
    .locals 0
    .parameter "context"
    .parameter "dims"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderDisplayer;-><init>(Landroid/content/Context;)V

    .line 215
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDims:Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;

    .line 216
    return-void
.end method

.method private addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 5
    .parameter "sb"
    .parameter "name"
    .parameter "bgColor"
    .parameter "fgColor"

    .prologue
    const/16 v4, 0x21

    .line 236
    #v4=(PosByte);
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 237
    .local v1, start:I
    #v1=(Integer);
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 238
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 240
    .local v0, end:I
    #v0=(Integer);
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    #v2=(UninitRef);
    invoke-direct {v2, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    #v2=(Reference);
    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 242
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    #v2=(UninitRef);
    invoke-direct {v2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #v2=(Reference);
    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 244
    new-instance v2, Lcom/android/mail/browse/FolderSpan;

    #v2=(UninitRef);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->mDims:Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;

    #v3=(Reference);
    invoke-direct {v2, p1, v3}, Lcom/android/mail/browse/FolderSpan;-><init>(Landroid/text/Spanned;Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;)V

    #v2=(Reference);
    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 246
    return-void
.end method


# virtual methods
.method public appendFolderSpans(Landroid/text/SpannableStringBuilder;)V
    .locals 7
    .parameter "sb"

    .prologue
    .line 219
    iget-object v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Folder;

    .line 220
    .local v1, f:Lcom/android/mail/providers/Folder;
    iget v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultBgColor:I

    #v6=(Integer);
    invoke-virtual {v1, v6}, Lcom/android/mail/providers/Folder;->getBackgroundColor(I)I

    move-result v0

    .line 221
    .local v0, bgColor:I
    #v0=(Integer);
    iget v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultFgColor:I

    invoke-virtual {v1, v6}, Lcom/android/mail/providers/Folder;->getForegroundColor(I)I

    move-result v2

    .line 222
    .local v2, fgColor:I
    #v2=(Integer);
    iget-object v6, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v6=(Reference);
    invoke-direct {p0, p1, v6, v0, v2}, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    goto :goto_0

    .line 225
    .end local v0           #bgColor:I
    .end local v1           #f:Lcom/android/mail/providers/Folder;
    .end local v2           #fgColor:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v6=(Boolean);
    iget-object v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v6=(Reference);
    invoke-interface {v6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/android/mail/ui/FolderDisplayer;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 227
    .local v5, r:Landroid/content/res/Resources;
    #v5=(Reference);
    const v6, 0x7f0a00a8

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, name:Ljava/lang/String;
    #v4=(Reference);
    const v6, 0x7f0c0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 229
    .restart local v0       #bgColor:I
    #v0=(Integer);
    const v6, 0x7f0c001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 230
    .restart local v2       #fgColor:I
    #v2=(Integer);
    invoke-direct {p0, p1, v4, v0, v2}, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->addSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    .line 232
    .end local v0           #bgColor:I
    .end local v2           #fgColor:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #r:Landroid/content/res/Resources;
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method
