.class public Lcom/android/mail/browse/ConversationViewHeader;
.super Landroid/widget/LinearLayout;
.source "ConversationViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;,
        Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountController:Lcom/android/mail/browse/ConversationAccountController;

.field private mCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

.field private final mCondensedTextSize:F

.field private final mCondensedTopPadding:I

.field private mFolderDisplayer:Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

.field private mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

.field private mHeaderItem:Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

.field private mLargeText:Z

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationViewHeader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/ConversationViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    #p0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mLargeText:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    .local v0, resources:Landroid/content/res/Resources;
    #v0=(Reference);
    const v1, 0x7f090020

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    #v1=(Float);
    iput v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCondensedTextSize:F

    .line 95
    const v1, 0x7f090022

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    .line 97
    return-void
.end method

.method private measureHeight()I
    .locals 5

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/view/ViewGroup;

    .line 176
    .local v1, parent:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 177
    sget-object v2, Lcom/android/mail/browse/ConversationViewHeader;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "Unable to measure height of conversation header"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getHeight()I

    move-result v0

    .line 181
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 180
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-static {p0, v1}, Lcom/android/mail/utils/Utils;->measureViewHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    .line 181
    .local v0, h:I
    #v0=(Integer);
    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;)V
    .locals 0
    .parameter "headerItem"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 202
    const v0, 0x7f0800a7

    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    invoke-interface {v0}, Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;->onFoldersClicked()V

    .line 207
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onConversationUpdated(Lcom/android/mail/providers/Conversation;)V
    .locals 2
    .parameter "conv"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->setFolders(Lcom/android/mail/providers/Conversation;)V

    .line 192
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationViewHeader;->measureHeight()I

    move-result v0

    .line 194
    .local v0, h:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mHeaderItem:Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;->setHeight(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    #v1=(Reference);
    invoke-interface {v1, v0}, Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;->onConversationViewHeaderHeightChange(I)V

    .line 198
    .end local v0           #h:I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    const v0, 0x7f08008a

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0800a7

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/FolderSpanTextView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    .line 106
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    invoke-virtual {v0, p0}, Lcom/android/mail/browse/FolderSpanTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;-><init>(Landroid/content/Context;Lcom/android/mail/browse/FolderSpan$FolderSpanDimensions;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFolderDisplayer:Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 116
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mLargeText:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-le v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCondensedTextSize:F

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #v0=(Integer);
    const/16 v1, 0x11

    #v1=(PosByte);
    if-lt v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 130
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 132
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 125
    :cond_1
    #v0=(Integer);v1=(PosByte);v2=(Integer);v3=(Uninit);v4=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCondensedTopPadding:I

    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/android/mail/browse/ConversationAccountController;)V
    .locals 0
    .parameter "callbacks"
    .parameter "accountController"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    .line 137
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewHeader;->mAccountController:Lcom/android/mail/browse/ConversationAccountController;

    .line 138
    return-void
.end method

.method public setFolders(Lcom/android/mail/providers/Conversation;)V
    .locals 9
    .parameter "conv"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v4, 0x0

    .line 152
    #v4=(Null);
    invoke-virtual {p0, v8}, Lcom/android/mail/browse/ConversationViewHeader;->setFoldersVisible(Z)V

    .line 153
    new-instance v6, Landroid/text/SpannableStringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 154
    .local v6, sb:Landroid/text/SpannableStringBuilder;
    #v6=(Reference);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mAccountController:Lcom/android/mail/browse/ConversationAccountController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/browse/ConversationAccountController;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v0

    iget-object v7, v0, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    .line 155
    .local v7, settings:Lcom/android/mail/providers/Settings;
    #v7=(Reference);
    iget-boolean v0, v7, Lcom/android/mail/providers/Settings;->priorityArrowsEnabled:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Conversation;->isImportant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/16 v0, 0x2e

    #v0=(PosByte);
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 157
    new-instance v0, Lcom/android/mail/browse/PriorityIndicatorSpan;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    const v2, 0x7f020039

    #v2=(Integer);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/browse/FolderSpanTextView;->getPadding()I

    move-result v3

    #v3=(Integer);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/browse/FolderSpanTextView;->getPaddingAbove()I

    move-result v5

    #v5=(Integer);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/PriorityIndicatorSpan;-><init>(Landroid/content/Context;IIII)V

    #v0=(Reference);
    const/16 v1, 0x11

    #v1=(PosByte);
    invoke-virtual {v6, v0, v4, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFolderDisplayer:Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, -0x1

    #v2=(Byte);
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V

    .line 165
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFolderDisplayer:Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/ConversationViewHeader$ConversationFolderDisplayer;->appendFolderSpans(Landroid/text/SpannableStringBuilder;)V

    .line 167
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    invoke-virtual {v0, v6}, Lcom/android/mail/browse/FolderSpanTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setFoldersVisible(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewHeader;->mFoldersView:Lcom/android/mail/browse/FolderSpanTextView;

    #v1=(Reference);
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    #v0=(PosByte);
    invoke-virtual {v1, v0}, Lcom/android/mail/browse/FolderSpanTextView;->setVisibility(I)V

    .line 149
    return-void

    .line 148
    :cond_0
    #v0=(Uninit);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .parameter "subject"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewHeader;->mSubjectView:Landroid/widget/TextView;

    #v0=(Reference);
    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method
