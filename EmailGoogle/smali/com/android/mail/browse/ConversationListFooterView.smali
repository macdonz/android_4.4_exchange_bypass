.class public final Lcom/android/mail/browse/ConversationListFooterView;
.super Landroid/widget/LinearLayout;
.source "ConversationListFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mail/ui/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;
    }
.end annotation


# static fields
.field private static sNormalBackground:Landroid/graphics/drawable/Drawable;

.field private static sWideBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mClickListener:Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;

.field private mErrorActionButton:Landroid/widget/Button;

.field private mErrorStatus:I

.field private mErrorText:Landroid/widget/TextView;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private mLoadMore:Landroid/view/View;

.field private mLoadMoreUri:Landroid/net/Uri;

.field private mLoading:Landroid/view/View;

.field private mNetworkError:Landroid/view/View;

.field private final mTabletDevice:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mTabletDevice:Z

    .line 61
    return-void
.end method

.method private getBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resId"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationListFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getNormalBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 188
    const v0, 0x7f020014

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->getBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 190
    :cond_0
    sget-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sNormalBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getWideBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 181
    const v0, 0x7f020015

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->getBackground(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_0
    sget-object v0, Lcom/android/mail/browse/ConversationListFooterView;->sWideBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 83
    .local v1, id:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 84
    .local v0, f:Lcom/android/mail/providers/Folder;
    const v2, 0x7f0800ac

    #v2=(Integer);
    if-ne v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/mail/browse/ConversationListFooterView;->mClickListener:Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    #v3=(Integer);
    invoke-interface {v2, v0, v3}, Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;->onFooterViewErrorActionClick(Lcom/android/mail/providers/Folder;I)V

    .line 89
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 86
    :cond_1
    #v2=(Integer);v3=(Uninit);
    const v2, 0x7f0800ae

    if-ne v1, v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/mail/browse/ConversationListFooterView;->mClickListener:Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;

    #v2=(Reference);
    invoke-interface {v2, v0}, Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;->onFooterViewLoadMoreClick(Lcom/android/mail/providers/Folder;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f0800ad

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    .line 68
    const v0, 0x7f0800aa

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    .line 69
    const v0, 0x7f0800ae

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0800ac

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f0800ab

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    .line 74
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 171
    iget-boolean v1, p0, Lcom/android/mail/browse/ConversationListFooterView;->mTabletDevice:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne p1, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationListFooterView;->getWideBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void

    .line 174
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    #v0=(Uninit);
    invoke-direct {p0}, Lcom/android/mail/browse/ConversationListFooterView;->getNormalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    goto :goto_0
.end method

.method public setClickListener(Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/mail/browse/ConversationListFooterView;->mClickListener:Lcom/android/mail/browse/ConversationListFooterView$FooterViewClickListener;

    .line 78
    return-void
.end method

.method public setFolder(Lcom/android/mail/providers/Folder;)V
    .locals 2
    .parameter "folder"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mail/browse/ConversationListFooterView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 93
    iget-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationListFooterView;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mail/browse/ConversationListFooterView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->loadMoreUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMoreUri:Landroid/net/Uri;

    .line 96
    return-void
.end method

.method public updateStatus(Lcom/android/mail/browse/ConversationCursor;)Z
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/16 v7, 0x8

    .line 102
    #v7=(PosByte);
    if-nez p1, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const/4 v3, 0x1

    .line 162
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(PosByte);v8=(Conflicted);v9=(Conflicted);
    return v3

    .line 108
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v8=(Uninit);v9=(Uninit);
    const/4 v3, 0x1

    .line 109
    .local v3, showFooter:Z
    #v3=(One);
    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 110
    .local v2, extras:Landroid/os/Bundle;
    #v2=(Reference);
    const-string v5, "cursor_status"

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, cursorStatus:I
    #v1=(Integer);
    const-string v5, "cursor_error"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_1

    const-string v5, "cursor_error"

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    :goto_1
    #v5=(Integer);
    iput v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    .line 114
    const-string v5, "cursor_total_count"

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, totalCount:I
    #v4=(Integer);
    invoke-static {v1}, Lcom/android/mail/providers/UIProvider$CursorStatus;->isWaitingForResults(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v4           #totalCount:I
    :cond_1
    #v4=(Uninit);v5=(Boolean);
    move v5, v6

    .line 111
    #v5=(Null);
    goto :goto_1

    .line 119
    .restart local v4       #totalCount:I
    :cond_2
    #v4=(Integer);v5=(Boolean);
    iget v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    #v5=(Integer);
    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationListFooterView;->getContext()Landroid/content/Context;

    move-result-object v8

    #v8=(Reference);
    iget v9, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    #v9=(Integer);
    invoke-static {v8, v9}, Lcom/android/mail/utils/Utils;->getSyncStatusText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    iget v8, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    #v8=(Integer);
    const/4 v9, 0x3

    #v9=(PosByte);
    if-eq v8, v9, :cond_3

    :goto_2
    #v6=(PosByte);
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorStatus:I

    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 149
    const v0, 0x7f0a000a

    .line 150
    .local v0, actionTextResourceId:I
    #v0=(Integer);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_3
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mErrorActionButton:Landroid/widget/Button;

    #v5=(Reference);
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .end local v0           #actionTextResourceId:I
    :cond_3
    #v0=(Uninit);v6=(Null);
    move v6, v7

    .line 126
    #v6=(PosByte);
    goto :goto_2

    .line 133
    :pswitch_0
    #v5=(Integer);
    const v0, 0x7f0a000a

    .line 134
    .restart local v0       #actionTextResourceId:I
    #v0=(Integer);
    goto :goto_3

    .line 136
    .end local v0           #actionTextResourceId:I
    :pswitch_1
    #v0=(Uninit);
    const v0, 0x7f0a00e9

    .line 137
    .restart local v0       #actionTextResourceId:I
    #v0=(Integer);
    goto :goto_3

    .line 139
    .end local v0           #actionTextResourceId:I
    :pswitch_2
    #v0=(Uninit);
    const v0, 0x7f0a000a

    .line 140
    .restart local v0       #actionTextResourceId:I
    #v0=(Integer);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 143
    .end local v0           #actionTextResourceId:I
    :pswitch_3
    #v0=(Uninit);v5=(Integer);
    const v0, 0x7f0a00ea

    .line 144
    .restart local v0       #actionTextResourceId:I
    #v0=(Integer);
    goto :goto_3

    .line 146
    .end local v0           #actionTextResourceId:I
    :pswitch_4
    #v0=(Uninit);
    const v0, 0x7f0a00eb

    .line 147
    .restart local v0       #actionTextResourceId:I
    #v0=(Integer);
    goto :goto_3

    .line 155
    .end local v0           #actionTextResourceId:I
    :cond_4
    #v0=(Uninit);v6=(Null);v8=(Uninit);v9=(Uninit);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMoreUri:Landroid/net/Uri;

    #v5=(Reference);
    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/android/mail/browse/ConversationCursor;->getCount()I

    move-result v5

    #v5=(Integer);
    if-ge v5, v4, :cond_5

    .line 156
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoading:Landroid/view/View;

    #v5=(Reference);
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v5, p0, Lcom/android/mail/browse/ConversationListFooterView;->mLoadMore:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 160
    :cond_5
    #v5=(Conflicted);
    const/4 v3, 0x0

    #v3=(Null);
    goto/16 :goto_0

    .line 131
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
