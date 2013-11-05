.class public Lcom/android/mail/ui/MailActionBarView;
.super Landroid/widget/LinearLayout;
.source "MailActionBarView.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/android/mail/ui/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/MailActionBarView$UpdateProvider;,
        Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final UNREAD_LIMIT:I

.field private mAccount:Lcom/android/mail/providers/Account;

.field private final mAccountObserver:Lcom/android/mail/providers/AccountObserver;

.field protected mActionBar:Landroid/app/ActionBar;

.field protected mActivity:Lcom/android/mail/ui/ControllableActivity;

.field protected mController:Lcom/android/mail/ui/ActivityController;

.field private mCurrentConversation:Lcom/android/mail/providers/Conversation;

.field private mEmptySpamItem:Landroid/view/MenuItem;

.field private mEmptyTrashItem:Landroid/view/MenuItem;

.field private mFolder:Lcom/android/mail/providers/Folder;

.field private mFolderObserver:Lcom/android/mail/providers/FolderObserver;

.field private mFolderSettingsItem:Landroid/view/MenuItem;

.field private final mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

.field private mHelpItem:Landroid/view/MenuItem;

.field protected final mIsOnTablet:Z

.field private mLegacySubTitle:Landroid/widget/TextView;

.field private mLegacyTitle:Landroid/widget/TextView;

.field private mLegacyTitleContainer:Landroid/view/View;

.field private mMode:I

.field private mRefreshItem:Landroid/view/MenuItem;

.field private mSearch:Landroid/view/MenuItem;

.field private mSearchWidget:Landroid/widget/SearchView;

.field private mSendFeedbackItem:Landroid/view/MenuItem;

.field private mUnreadCount:I

.field private mUseLegacyTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mail/ui/MailActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 173
    #v3=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    #p0=(Reference);
    iput v3, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    .line 132
    new-instance v1, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;-><init>(Lcom/android/mail/ui/MailActionBarView;Lcom/android/mail/ui/MailActionBarView$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    .line 134
    iput v3, p0, Lcom/android/mail/ui/MailActionBarView;->mUnreadCount:I

    .line 157
    new-instance v1, Lcom/android/mail/ui/MailActionBarView$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/mail/ui/MailActionBarView$1;-><init>(Lcom/android/mail/ui/MailActionBarView;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    .line 174
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, r:Landroid/content/res/Resources;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/mail/ui/MailActionBarView;->mIsOnTablet:Z

    .line 176
    const v1, 0x7f0e0018

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/MailActionBarView;)Lcom/android/mail/providers/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/ui/MailActionBarView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mail/ui/MailActionBarView;Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->updateAccount(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method private static actionBarSupportsNewMethods(Landroid/app/ActionBar;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 852
    #v1=(Null);
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #v2=(Integer);
    const/16 v3, 0x11

    #v3=(PosByte);
    if-le v2, v3, :cond_1

    move v1, v0

    .line 866
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 855
    :cond_1
    #v0=(One);v1=(Null);v2=(Integer);v3=(PosByte);
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 860
    if-eqz p0, :cond_3

    .line 861
    :try_start_0
    const-class v2, Landroid/app/ActionBar;

    #v2=(Reference);
    const-string v3, "DISPLAY_TITLE_MULTIPLE_LINES"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    move v1, v0

    .line 865
    #v1=(Boolean);
    goto :goto_0

    :cond_2
    #v0=(One);v1=(Null);v2=(Reference);v3=(Reference);
    move v0, v1

    .line 861
    #v0=(Null);
    goto :goto_1

    .line 863
    :catch_0
    #v0=(One);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_0

    :cond_3
    #v0=(One);v2=(Integer);v3=(PosByte);
    move v0, v1

    #v0=(Null);
    goto :goto_1
.end method

.method private closeSearchField()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method private getActionBarTitleModeFlag()I
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/android/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    #v0=(PosByte);
    return v0

    :cond_0
    #v0=(Boolean);
    const/16 v0, 0x8

    #v0=(PosByte);
    goto :goto_0
.end method

.method private initializeTitleViews()V
    .locals 3

    .prologue
    .line 180
    const v1, 0x7f080063

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MailActionBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-static {v1}, Lcom/android/mail/ui/MailActionBarView;->actionBarSupportsNewMethods(Landroid/app/ActionBar;)Z

    move-result v0

    .line 184
    .local v0, runningMR11OrLater:Z
    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v1}, Lcom/android/mail/ui/ActivityController;->isDrawerEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    .line 186
    :cond_0
    #v1=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    #v1=(Reference);
    const/16 v2, 0x8

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const/4 v1, 0x0

    #v1=(Null);
    iput-boolean v1, p0, Lcom/android/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    .line 198
    .end local v0           #runningMR11OrLater:Z
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    return-void

    .line 189
    .restart local v0       #runningMR11OrLater:Z
    :cond_2
    #v0=(Boolean);v1=(Boolean);v2=(Uninit);
    const/4 v1, 0x1

    #v1=(One);
    iput-boolean v1, p0, Lcom/android/mail/ui/MailActionBarView;->mUseLegacyTitle:Z

    .line 191
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f080064

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitleContainer:Landroid/view/View;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private removeUnreadCount(Z)V
    .locals 4
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    .line 725
    #v3=(Null);
    if-eqz p1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    #v0=(Reference);
    invoke-virtual {v0, v3}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    invoke-virtual {v0, v3}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->sendEmptyMessage(I)Z

    .line 736
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 731
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    #v0=(Reference);
    invoke-virtual {v0, v3}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->hasMessages(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    #v0=(Reference);
    const-wide/16 v1, 0x1388

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static reorderMenu(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/view/Menu;I)V
    .locals 15
    .parameter "context"
    .parameter "account"
    .parameter "menu"
    .parameter "maxItems"

    .prologue
    .line 456
    invoke-static {p0}, Lcom/android/mail/preferences/MailPrefs;->get(Landroid/content/Context;)Lcom/android/mail/preferences/MailPrefs;

    move-result-object v13

    #v13=(Reference);
    const/16 v14, 0x8

    #v14=(PosByte);
    move-object/from16 v0, p1

    #v0=(Reference);
    invoke-virtual {v0, v14}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v14

    #v14=(Boolean);
    invoke-virtual {v13, v14}, Lcom/android/mail/preferences/MailPrefs;->getRemovalAction(Z)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, removalAction:Ljava/lang/String;
    #v8=(Reference);
    const-string v13, "archive"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_0

    const-string v13, "archive-and-delete"

    #v13=(Reference);
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_4

    :cond_0
    const/4 v9, 0x1

    .line 460
    .local v9, showArchive:Z
    :goto_0
    #v9=(Boolean);
    const-string v13, "delete"

    #v13=(Reference);
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_1

    const-string v13, "archive-and-delete"

    #v13=(Reference);
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_5

    :cond_1
    const/4 v11, 0x1

    .line 464
    .local v11, showDelete:Z
    :goto_1
    #v11=(Boolean);
    const/4 v2, 0x0

    .line 465
    .local v2, archiveVisibleEnabled:Z
    #v2=(Null);
    const/4 v3, 0x0

    .line 466
    .local v3, deleteVisibleEnabled:Z
    #v3=(Null);
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    #v2=(Boolean);v3=(Boolean);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v12=(Conflicted);v13=(Integer);
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v13

    if-ge v5, v13, :cond_8

    .line 467
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 468
    .local v7, menuItem:Landroid/view/MenuItem;
    #v7=(Reference);
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 469
    .local v6, itemId:I
    #v6=(Integer);
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v12

    .line 470
    .local v12, visible:Z
    #v12=(Boolean);
    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    .line 472
    .local v4, enabled:Z
    #v4=(Boolean);
    const v13, 0x7f08016a

    if-eq v6, v13, :cond_2

    const v13, 0x7f08016b

    if-ne v6, v13, :cond_6

    .line 473
    :cond_2
    and-int v13, v12, v4

    #v13=(Boolean);
    or-int/2addr v2, v13

    .line 466
    :cond_3
    :goto_3
    #v13=(Integer);
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 458
    .end local v2           #archiveVisibleEnabled:Z
    .end local v3           #deleteVisibleEnabled:Z
    .end local v4           #enabled:Z
    .end local v5           #i:I
    .end local v6           #itemId:I
    .end local v7           #menuItem:Landroid/view/MenuItem;
    .end local v9           #showArchive:Z
    .end local v11           #showDelete:Z
    .end local v12           #visible:Z
    :cond_4
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Boolean);
    const/4 v9, 0x0

    #v9=(Null);
    goto :goto_0

    .line 460
    .restart local v9       #showArchive:Z
    :cond_5
    #v9=(Boolean);
    const/4 v11, 0x0

    #v11=(Null);
    goto :goto_1

    .line 474
    .restart local v2       #archiveVisibleEnabled:Z
    .restart local v3       #deleteVisibleEnabled:Z
    .restart local v4       #enabled:Z
    .restart local v5       #i:I
    .restart local v6       #itemId:I
    .restart local v7       #menuItem:Landroid/view/MenuItem;
    .restart local v11       #showDelete:Z
    .restart local v12       #visible:Z
    :cond_6
    #v2=(Boolean);v3=(Boolean);v4=(Boolean);v5=(Integer);v6=(Integer);v7=(Reference);v11=(Boolean);v12=(Boolean);v13=(Integer);
    const v13, 0x7f08016c

    if-eq v6, v13, :cond_7

    const v13, 0x7f08016d

    if-ne v6, v13, :cond_3

    .line 475
    :cond_7
    and-int v13, v12, v4

    #v13=(Boolean);
    or-int/2addr v3, v13

    goto :goto_3

    .line 479
    .end local v4           #enabled:Z
    .end local v6           #itemId:I
    .end local v7           #menuItem:Landroid/view/MenuItem;
    .end local v12           #visible:Z
    :cond_8
    #v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v12=(Conflicted);v13=(Integer);
    const/4 v1, 0x0

    .line 481
    .local v1, actionItems:I
    #v1=(Null);
    const/4 v5, 0x0

    :goto_4
    #v0=(Conflicted);v1=(Integer);v10=(Conflicted);v13=(Conflicted);
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v13

    #v13=(Integer);
    if-ge v5, v13, :cond_13

    .line 482
    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 483
    .restart local v7       #menuItem:Landroid/view/MenuItem;
    #v7=(Reference);
    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 486
    .restart local v6       #itemId:I
    #v6=(Integer);
    invoke-interface {v7}, Landroid/view/MenuItem;->isVisible()Z

    move-result v13

    #v13=(Boolean);
    if-eqz v13, :cond_a

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    #v13=(Reference);
    if-eqz v13, :cond_a

    .line 487
    const v13, 0x7f08016a

    #v13=(Integer);
    if-eq v6, v13, :cond_9

    const v13, 0x7f08016b

    if-ne v6, v13, :cond_d

    .line 494
    :cond_9
    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v13

    #v13=(Boolean);
    if-nez v13, :cond_b

    if-eqz v9, :cond_b

    .line 495
    const/4 v13, 0x0

    #v13=(Null);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    if-eqz v11, :cond_a

    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 481
    :cond_a
    :goto_5
    #v0=(Conflicted);v13=(Conflicted);
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 506
    :cond_b
    #v0=(Reference);v13=(Boolean);
    if-nez v9, :cond_c

    if-nez v3, :cond_a

    :cond_c
    move/from16 v0, p3

    #v0=(Integer);
    if-ge v1, v0, :cond_a

    .line 507
    const/4 v13, 0x2

    #v13=(PosByte);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 511
    :cond_d
    #v0=(Reference);v13=(Integer);
    const v13, 0x7f08016c

    if-eq v6, v13, :cond_e

    const v13, 0x7f08016d

    if-ne v6, v13, :cond_10

    .line 517
    :cond_e
    if-nez v11, :cond_f

    if-nez v2, :cond_a

    :cond_f
    move/from16 v0, p3

    #v0=(Integer);
    if-ge v1, v0, :cond_a

    .line 518
    const/4 v13, 0x2

    #v13=(PosByte);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 521
    :cond_10
    #v0=(Reference);v13=(Integer);
    const v13, 0x7f080170

    if-ne v6, v13, :cond_11

    .line 522
    const/16 v13, 0x2000

    #v13=(PosShort);
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v10

    .line 524
    .local v10, showChangeFolder:Z
    #v10=(Boolean);
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    if-eqz v10, :cond_a

    move/from16 v0, p3

    #v0=(Integer);
    if-ge v1, v0, :cond_a

    .line 527
    const/4 v13, 0x2

    #v13=(PosByte);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 530
    .end local v10           #showChangeFolder:Z
    :cond_11
    #v0=(Reference);v10=(Conflicted);v13=(Integer);
    const v13, 0x7f080179

    if-ne v6, v13, :cond_12

    .line 531
    const/16 v13, 0xa

    #v13=(PosByte);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 535
    :cond_12
    #v13=(Integer);
    move/from16 v0, p3

    #v0=(Integer);
    if-ge v1, v0, :cond_a

    .line 536
    const/4 v13, 0x2

    #v13=(PosByte);
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 542
    .end local v6           #itemId:I
    .end local v7           #menuItem:Landroid/view/MenuItem;
    :cond_13
    #v0=(Conflicted);v6=(Conflicted);v7=(Conflicted);v13=(Integer);
    return-void
.end method

.method private setFolderAndAccount(Z)V
    .locals 6
    .parameter "folderChanged"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 678
    #v3=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v5=(Reference);
    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    if-nez v5, :cond_1

    .line 717
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void

    .line 681
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Null);v5=(Reference);
    iget v5, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v5=(Integer);
    invoke-static {v5}, Lcom/android/mail/ui/ViewMode;->isWaitingForSync(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 683
    const-string v3, ""

    #v3=(Reference);
    invoke-direct {p0, v3}, Lcom/android/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 684
    invoke-direct {p0, v4}, Lcom/android/mail/ui/MailActionBarView;->removeUnreadCount(Z)V

    goto :goto_0

    .line 688
    :cond_2
    #v3=(Null);
    iget-boolean v5, p0, Lcom/android/mail/ui/MailActionBarView;->mIsOnTablet:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v5=(Integer);
    invoke-static {v5}, Lcom/android/mail/ui/ViewMode;->isListMode(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    :cond_3
    move v1, v4

    .line 689
    .local v1, isShowingFolder:Z
    :goto_1
    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 694
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-nez v5, :cond_5

    .line 697
    const-string v3, ""

    #v3=(Reference);
    invoke-direct {p0, v3}, Lcom/android/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #isShowingFolder:Z
    :cond_4
    #v1=(Uninit);v3=(Null);v5=(Boolean);
    move v1, v3

    .line 688
    #v1=(Null);
    goto :goto_1

    .line 700
    .restart local v1       #isShowingFolder:Z
    :cond_5
    #v1=(Boolean);v5=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v5, v5, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/mail/ui/MailActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->isUnreadCountHidden()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_9

    move v0, v3

    .line 707
    .local v0, folderUnreadCount:I
    :goto_2
    #v0=(Integer);v5=(Conflicted);
    iget v5, p0, Lcom/android/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    #v5=(Integer);
    if-le v0, v5, :cond_a

    iget v5, p0, Lcom/android/mail/ui/MailActionBarView;->UNREAD_LIMIT:I

    add-int/lit8 v2, v5, 0x1

    .line 709
    .local v2, toDisplay:I
    :goto_3
    #v2=(Integer);
    iget v5, p0, Lcom/android/mail/ui/MailActionBarView;->mUnreadCount:I

    if-ne v5, v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    if-eqz v2, :cond_7

    .line 710
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/mail/utils/Utils;->getUnreadMessageString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mail/ui/MailActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 714
    :cond_7
    #v5=(Conflicted);
    if-nez v2, :cond_8

    move v3, v4

    :cond_8
    #v3=(Boolean);
    invoke-direct {p0, v3}, Lcom/android/mail/ui/MailActionBarView;->removeUnreadCount(Z)V

    .line 716
    iput v2, p0, Lcom/android/mail/ui/MailActionBarView;->mUnreadCount:I

    goto :goto_0

    .line 702
    .end local v0           #folderUnreadCount:I
    .end local v2           #toDisplay:I
    :cond_9
    #v0=(Uninit);v2=(Uninit);v3=(Null);v5=(Boolean);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    iget v0, v5, Lcom/android/mail/providers/Folder;->unreadCount:I

    #v0=(Integer);
    goto :goto_2

    .restart local v0       #folderUnreadCount:I
    :cond_a
    #v5=(Integer);
    move v2, v0

    .line 707
    #v2=(Integer);
    goto :goto_3
.end method

.method private setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 556
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacySubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 565
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    #v0=(Reference);
    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mLegacyTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_1
    return-void
.end method

.method private setTitleModeFlags(I)V
    .locals 3
    .parameter "enabledFlags"

    .prologue
    .line 785
    const/16 v0, 0x18

    .line 786
    .local v0, mask:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v1=(Reference);
    const/16 v2, 0x18

    #v2=(PosByte);
    invoke-virtual {v1, p1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 787
    return-void
.end method

.method private showNavList()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->getActionBarTitleModeFlag()I

    move-result v0

    #v0=(Integer);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setTitleModeFlags(I)V

    .line 549
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setFolderAndAccount(Z)V

    .line 550
    return-void
.end method

.method private updateAccount(Lcom/android/mail/providers/Account;)V
    .locals 8
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x0

    .line 289
    #v4=(Null);
    iget-object v6, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v6=(Reference);
    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    iget-object v7, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_2

    :cond_0
    #v6=(Conflicted);v7=(Conflicted);
    move v0, v5

    .line 290
    .local v0, accountChanged:Z
    :goto_0
    #v0=(Boolean);
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    .line 291
    iget-object v6, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v6=(Reference);
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 292
    iget-object v6, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v6}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 293
    .local v2, resolver:Landroid/content/ContentResolver;
    #v2=(Reference);
    new-instance v1, Landroid/os/Bundle;

    #v1=(UninitRef);
    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 294
    .local v1, bundle:Landroid/os/Bundle;
    #v1=(Reference);
    const-string v6, "account"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    new-instance v3, Lcom/android/mail/ui/MailActionBarView$UpdateProvider;

    #v3=(UninitRef);
    iget-object v6, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v6, v6, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-direct {v3, p0, v6, v2}, Lcom/android/mail/ui/MailActionBarView$UpdateProvider;-><init>(Lcom/android/mail/ui/MailActionBarView;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 296
    .local v3, updater:Lcom/android/mail/ui/MailActionBarView$UpdateProvider;
    #v3=(Reference);
    new-array v5, v5, [Landroid/os/Bundle;

    #v5=(Reference);
    aput-object v1, v5, v4

    invoke-virtual {v3, v5}, Lcom/android/mail/ui/MailActionBarView$UpdateProvider;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    invoke-direct {p0, v4}, Lcom/android/mail/ui/MailActionBarView;->setFolderAndAccount(Z)V

    .line 299
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #updater:Lcom/android/mail/ui/MailActionBarView$UpdateProvider;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void

    .end local v0           #accountChanged:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(One);v6=(Boolean);v7=(Reference);
    move v0, v4

    .line 289
    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public collapseSearch()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 213
    :cond_0
    return-void
.end method

.method public expandSearch()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 204
    :cond_0
    return-void
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v0=(Integer);
    return v0
.end method

.method public getOptionsMenuId()I
    .locals 4

    .prologue
    const v1, 0x7f110001

    #v1=(Integer);
    const v0, 0x7f110002

    .line 251
    #v0=(Integer);
    iget v2, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 265
    sget-object v1, Lcom/android/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "Menu requested for unknown view mode"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    :goto_0
    :pswitch_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return v0

    :pswitch_1
    #v1=(Integer);v2=(Integer);v3=(Uninit);
    move v0, v1

    .line 255
    goto :goto_0

    .line 259
    :pswitch_2
    const v0, 0x7f110003

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :pswitch_4
    const v0, 0x7f11000f

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getSearch()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    #v0=(Reference);
    return-object v0
.end method

.method public initialize(Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/ui/ActivityController;Landroid/app/ActionBar;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"
    .parameter "actionBar"

    .prologue
    .line 271
    iput-object p3, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    .line 272
    iput-object p2, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    .line 273
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 274
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->initializeTitleViews()V

    .line 276
    new-instance v0, Lcom/android/mail/ui/MailActionBarView$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/ui/MailActionBarView$2;-><init>(Lcom/android/mail/ui/MailActionBarView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 284
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/providers/FolderObserver;->initialize(Lcom/android/mail/ui/FolderController;)Lcom/android/mail/providers/Folder;

    .line 285
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/AccountObserver;->initialize(Lcom/android/mail/ui/AccountController;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->updateAccount(Lcom/android/mail/providers/Account;)V

    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    #v0=(Integer);
    const v1, 0x7f080063

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onUpPressed()Z

    .line 874
    :cond_0
    #v0=(Conflicted);
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 224
    #v3=(One);
    iget v2, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v2=(Integer);
    if-nez v2, :cond_0

    .line 225
    const/4 v2, 0x0

    .line 247
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);v4=(Conflicted);
    return v2

    .line 227
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v4=(Uninit);
    const v2, 0x7f080179

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    .line 228
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    .line 230
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 231
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "search"

    #v4=(Reference);
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/app/SearchManager;

    .line 233
    .local v1, searchManager:Landroid/app/SearchManager;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v2}, Lcom/android/mail/ui/ControllableActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 235
    .local v0, info:Landroid/app/SearchableInfo;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 236
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 237
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 241
    .end local v0           #info:Landroid/app/SearchableInfo;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);
    const v2, 0x7f080169

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    .line 242
    const v2, 0x7f080168

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    .line 243
    const v2, 0x7f08017a

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    .line 244
    const v2, 0x7f08017b

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    .line 245
    const v2, 0x7f08017c

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    .line 246
    const v2, 0x7f08017d

    #v2=(Integer);
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    move v2, v3

    .line 247
    #v2=(One);
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/FolderObserver;->unregisterAndDestroy()V

    .line 312
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderObserver:Lcom/android/mail/providers/FolderObserver;

    .line 314
    :cond_0
    #v0=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mAccountObserver:Lcom/android/mail/providers/AccountObserver;

    invoke-virtual {v0}, Lcom/android/mail/providers/AccountObserver;->unregisterAndDestroy()V

    .line 315
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->removeMessages(I)V

    .line 316
    return-void
.end method

.method public onFolderUpdated(Lcom/android/mail/providers/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 742
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 746
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v2, p1}, Lcom/android/mail/providers/Folder;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_3

    :cond_2
    #v2=(Conflicted);
    const/4 v0, 0x1

    .line 747
    .local v0, changingFolders:Z
    :goto_1
    #v0=(Boolean);
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 748
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setFolderAndAccount(Z)V

    .line 749
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    #v2=(Reference);
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 751
    .local v1, listContext:Lcom/android/mail/ConversationListContext;
    :goto_2
    #v1=(Reference);
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/mail/ConversationListContext;->isSearchResult(Lcom/android/mail/ConversationListContext;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->closeSearchField()V

    goto :goto_0

    .line 746
    .end local v0           #changingFolders:Z
    .end local v1           #listContext:Lcom/android/mail/ConversationListContext;
    :cond_3
    #v0=(Uninit);v1=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1

    .line 749
    .restart local v0       #changingFolders:Z
    :cond_4
    #v0=(Boolean);v2=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v2}, Lcom/android/mail/ui/ActivityController;->getCurrentListContext()Lcom/android/mail/ConversationListContext;

    move-result-object v1

    #v1=(Reference);
    goto :goto_2
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 771
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setVisibility(I)V

    .line 775
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 763
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    .line 367
    sget-object v8, Lcom/android/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    #v8=(Reference);
    const-string v9, "ActionBarView.onPrepareOptionsMenu()."

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v8, v9, v10}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 369
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    if-eqz v8, :cond_0

    .line 370
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mHelpItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    const v10, 0x8000

    #v10=(Char);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    #v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 373
    :cond_0
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    #v8=(Reference);
    if-eqz v8, :cond_1

    .line 374
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mSendFeedbackItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    const/high16 v10, 0x1

    #v10=(Integer);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    #v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    :cond_1
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    #v8=(Reference);
    invoke-interface {v8}, Lcom/android/mail/ui/ActivityController;->shouldHideMenuItems()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_6

    .line 379
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    .line 381
    .local v6, size:I
    #v6=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v8=(Integer);
    if-ge v1, v6, :cond_5

    .line 382
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 383
    .local v3, item:Landroid/view/MenuItem;
    #v3=(Reference);
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 384
    .local v2, id:I
    #v2=(Integer);
    const v8, 0x7f080167

    if-eq v2, v8, :cond_2

    const v8, 0x7f080168

    if-eq v2, v8, :cond_2

    const v8, 0x7f080169

    if-eq v2, v8, :cond_2

    .line 387
    const/4 v8, 0x0

    #v8=(Null);
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    :cond_2
    #v8=(Integer);
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #item:Landroid/view/MenuItem;
    .end local v6           #size:I
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v6=(Uninit);v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_0

    .line 374
    :cond_4
    #v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_1

    .line 390
    .restart local v1       #i:I
    .restart local v6       #size:I
    :cond_5
    #v1=(Integer);v2=(Conflicted);v3=(Conflicted);v6=(Integer);v8=(Integer);
    const/4 v8, 0x0

    .line 447
    .end local v1           #i:I
    .end local v6           #size:I
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Null);v9=(Conflicted);
    return v8

    .line 393
    :cond_6
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Boolean);v9=(Reference);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    #v8=(Reference);
    if-eqz v8, :cond_7

    .line 396
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mRefreshItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v8}, Lcom/android/mail/providers/Folder;->isDraft()Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    const/16 v10, 0x1000

    #v10=(PosShort);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    #v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 401
    :cond_7
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    #v8=(Reference);
    if-eqz v8, :cond_8

    .line 402
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mFolderSettingsItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v10, 0x200

    #v10=(PosShort);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_5
    #v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    :cond_8
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    #v8=(Reference);
    if-eqz v8, :cond_9

    .line 406
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptyTrashItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    const/high16 v10, 0x20

    #v10=(Integer);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    iget v8, v8, Lcom/android/mail/providers/Folder;->totalCount:I

    #v8=(Integer);
    if-lez v8, :cond_d

    const/4 v8, 0x1

    :goto_6
    #v8=(Boolean);v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 410
    :cond_9
    #v8=(Conflicted);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    #v8=(Reference);
    if-eqz v8, :cond_a

    .line 411
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mEmptySpamItem:Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    const/high16 v10, 0x40

    #v10=(Integer);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    const/16 v10, 0x40

    #v10=(PosByte);
    invoke-virtual {v8, v10}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    iget v8, v8, Lcom/android/mail/providers/Folder;->totalCount:I

    #v8=(Integer);
    if-lez v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    #v8=(Boolean);v10=(Conflicted);
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    :cond_a
    #v8=(Conflicted);
    iget v8, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v8=(Integer);
    packed-switch v8, :pswitch_data_0

    .line 447
    :goto_8
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto/16 :goto_3

    .line 396
    :cond_b
    #v0=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Conflicted);v9=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_4

    .line 402
    :cond_c
    #v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_5

    .line 406
    :cond_d
    #v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_6

    .line 411
    :cond_e
    #v8=(Conflicted);
    const/4 v8, 0x0

    #v8=(Null);
    goto :goto_7

    .line 423
    :pswitch_0
    #v8=(Integer);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->setConversationModeOptions(Landroid/view/Menu;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 426
    .local v5, resources:Landroid/content/res/Resources;
    #v5=(Reference);
    const v8, 0x7f0e002f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 427
    .local v4, maxItems:I
    #v4=(Integer);
    const v8, 0x7f0e0030

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 429
    .local v0, hiddenItems:I
    #v0=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    #v8=(Reference);
    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_f

    const/4 v0, 0x0

    .end local v0           #hiddenItems:I
    :cond_f
    sub-int v7, v4, v0

    .line 432
    .local v7, totalItems:I
    #v7=(Integer);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->getContext()Landroid/content/Context;

    move-result-object v8

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    invoke-static {v8, v9, p1, v7}, Lcom/android/mail/ui/MailActionBarView;->reorderMenu(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/view/Menu;I)V

    goto :goto_8

    .line 437
    .end local v4           #maxItems:I
    .end local v5           #resources:Landroid/content/res/Resources;
    .end local v7           #totalItems:I
    :pswitch_1
    #v0=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Integer);
    const v8, 0x7f080179

    iget-object v9, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    const/16 v10, 0x40

    #v10=(PosByte);
    invoke-virtual {v9, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v9

    #v9=(Boolean);
    invoke-static {p1, v8, v9}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_8

    .line 442
    :pswitch_2
    #v9=(Reference);v10=(Conflicted);
    const v8, 0x7f08007d

    const/4 v9, 0x0

    #v9=(Null);
    invoke-static {p1, v8, v9}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 443
    const v8, 0x7f080179

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_8

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 617
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .parameter "query"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearch:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 609
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    const-string v1, ""

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 611
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-interface {v0, v1}, Lcom/android/mail/ui/ActivityController;->executeSearch(Ljava/lang/String;)V

    .line 612
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onSuggestionClick(I)Z
    .locals 10
    .parameter "position"

    .prologue
    const/4 v9, -0x1

    #v9=(Byte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v7, 0x0

    .line 628
    #v7=(Null);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/SearchView;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 629
    .local v0, c:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    move v1, v6

    .line 630
    .local v1, haveValidQuery:Z
    :goto_0
    #v1=(Boolean);v8=(Conflicted);
    if-nez v1, :cond_1

    .line 631
    sget-object v8, Lcom/android/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    #v8=(Reference);
    const-string v9, "onSuggestionClick: Couldn\'t get a search query"

    #v9=(Reference);
    new-array v7, v7, [Ljava/lang/Object;

    #v7=(Reference);
    invoke-static {v8, v9, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 667
    :goto_1
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v9=(Conflicted);
    return v6

    .end local v1           #haveValidQuery:Z
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v7=(Null);v8=(Conflicted);v9=(Byte);
    move v1, v7

    .line 629
    #v1=(Null);
    goto :goto_0

    .line 637
    .restart local v1       #haveValidQuery:Z
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->collapseSearch()V

    .line 639
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mSearchWidget:Landroid/widget/SearchView;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    .local v3, queryText:Ljava/lang/String;
    #v3=(Reference);
    const-string v8, "suggest_intent_query"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    #v8=(Integer);
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, query:Ljava/lang/String;
    #v2=(Reference);
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    #v8=(Integer);
    if-eqz v8, :cond_3

    .line 647
    const-string v8, " "

    #v8=(Reference);
    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 649
    .local v4, queryTokenIndex:I
    #v4=(Integer);
    if-le v4, v9, :cond_2

    .line 650
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 660
    :cond_2
    if-le v4, v9, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    #v8=(Boolean);
    if-nez v8, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    #v9=(Integer);
    if-ge v8, v9, :cond_3

    .line 662
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 663
    .local v5, start:I
    #v5=(Integer);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    #v8=(Integer);
    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 666
    .end local v4           #queryTokenIndex:I
    .end local v5           #start:I
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);
    iget-object v7, p0, Lcom/android/mail/ui/MailActionBarView;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-interface {v7, v8}, Lcom/android/mail/ui/ActivityController;->executeSearch(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/MailActionBarView;->onSuggestionClick(I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onViewModeChanged(I)V
    .locals 3
    .parameter "newMode"

    .prologue
    const/4 v2, 0x1

    .line 320
    #v2=(One);
    iput p1, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    .line 321
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 322
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mHandler:Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->removeMessages(I)V

    .line 325
    iget v0, p0, Lcom/android/mail/ui/MailActionBarView;->mMode:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    :pswitch_0
    #v0=(Conflicted);
    return-void

    .line 329
    :pswitch_1
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->showNavList()V

    goto :goto_0

    .line 332
    :pswitch_2
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->setEmptyMode()V

    goto :goto_0

    .line 337
    :pswitch_3
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->closeSearchField()V

    .line 338
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActionBarView;->setEmptyMode()V

    goto :goto_0

    .line 344
    :pswitch_4
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/ui/MailActionBarView;->showNavList()V

    goto :goto_0

    .line 325
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public removeBackButton()V
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 593
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 590
    :cond_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x6

    .line 591
    .local v0, mask:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    #v2=(PosByte);
    const/4 v3, 0x6

    #v3=(PosByte);
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 592
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setBackButton()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 596
    #v2=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 603
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 600
    :cond_0
    #v0=(Uninit);
    const/4 v0, 0x6

    .line 601
    .local v0, mask:I
    #v0=(PosByte);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 602
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setConversationModeOptions(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/16 v12, 0x10

    #v12=(PosByte);
    const/4 v11, 0x2

    #v11=(PosByte);
    const/16 v10, 0x8

    #v10=(PosByte);
    const/4 v6, 0x1

    #v6=(One);
    const/4 v7, 0x0

    .line 795
    #v7=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    if-nez v5, :cond_0

    .line 846
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Boolean);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 798
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Reference);v6=(One);v8=(Uninit);v9=(Uninit);v10=(PosByte);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    invoke-virtual {v5}, Lcom/android/mail/providers/Conversation;->isImportant()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    move v4, v6

    .line 799
    .local v4, showMarkImportant:Z
    :goto_1
    #v4=(Boolean);
    const v8, 0x7f080172

    #v8=(Integer);
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    const/high16 v9, 0x2

    #v9=(Integer);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 801
    const v8, 0x7f080173

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    const/high16 v9, 0x2

    #v9=(Integer);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 803
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v8, 0x20

    #v8=(PosByte);
    invoke-virtual {v5, v8}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_5

    move v2, v6

    .line 805
    .local v2, showDelete:Z
    :goto_4
    #v2=(Boolean);v5=(Conflicted);v8=(Integer);
    const v5, 0x7f08016c

    #v5=(Integer);
    invoke-static {p1, v5, v2}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 809
    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->isDraft()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    const/high16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_6

    move v3, v6

    .line 811
    .local v3, showDiscardDrafts:Z
    :goto_5
    #v3=(Boolean);v5=(Conflicted);
    const v5, 0x7f08016d

    #v5=(Integer);
    invoke-static {p1, v5, v3}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 812
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    invoke-virtual {v5, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v5, v12}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_7

    move v0, v6

    .line 815
    .local v0, archiveVisible:Z
    :goto_6
    #v0=(Boolean);v5=(Conflicted);
    const v5, 0x7f08016a

    #v5=(Integer);
    invoke-static {p1, v5, v0}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 816
    const v8, 0x7f08016b

    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v5, v10}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/providers/Folder;->isProviderFolder()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    invoke-virtual {v5, v10}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_8

    move v5, v6

    :goto_7
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 820
    const v8, 0x7f08016f

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v9, 0x4000

    #v9=(PosShort);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_9

    move v5, v6

    :goto_8
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 822
    const v8, 0x7f080171

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/high16 v9, 0x1

    #v9=(Integer);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_a

    move v5, v6

    :goto_9
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 825
    const v5, 0x7f08016b

    #v5=(Integer);
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 826
    .local v1, removeFolder:Landroid/view/MenuItem;
    #v1=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 827
    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v5}, Lcom/android/mail/ui/ControllableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0a0046

    new-array v9, v6, [Ljava/lang/Object;

    #v9=(Reference);
    iget-object v10, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 830
    :cond_1
    #v9=(Conflicted);v10=(Conflicted);
    const v8, 0x7f080176

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v5, v11}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v9, 0x40

    #v9=(PosByte);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget-boolean v5, v5, Lcom/android/mail/providers/Conversation;->spam:Z

    #v5=(Boolean);
    if-nez v5, :cond_b

    move v5, v6

    :goto_a
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 834
    const v8, 0x7f080177

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    invoke-virtual {v5, v11}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v9, 0x80

    #v9=(PosShort);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget-boolean v5, v5, Lcom/android/mail/providers/Conversation;->spam:Z

    #v5=(Boolean);
    if-eqz v5, :cond_c

    move v5, v6

    :goto_b
    #v9=(Conflicted);
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 838
    const v8, 0x7f080178

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v5=(Reference);
    const/4 v9, 0x4

    #v9=(PosByte);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v9, 0x2000

    #v9=(PosShort);
    invoke-virtual {v5, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v5=(Reference);
    iget-boolean v5, v5, Lcom/android/mail/providers/Conversation;->phishing:Z

    #v5=(Boolean);
    if-nez v5, :cond_d

    move v5, v6

    :goto_c
    invoke-static {p1, v8, v5}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 842
    const v5, 0x7f080174

    #v5=(Integer);
    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mAccount:Lcom/android/mail/providers/Account;

    #v8=(Reference);
    invoke-virtual {v8, v12}, Lcom/android/mail/providers/Account;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    #v8=(Reference);
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    #v8=(Reference);
    iget-boolean v8, v8, Lcom/android/mail/providers/Conversation;->muted:Z

    #v8=(Boolean);
    if-nez v8, :cond_e

    :goto_d
    #v6=(Boolean);v8=(Conflicted);
    invoke-static {p1, v5, v6}, Lcom/android/mail/utils/Utils;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    .end local v0           #archiveVisible:Z
    .end local v1           #removeFolder:Landroid/view/MenuItem;
    .end local v2           #showDelete:Z
    .end local v3           #showDiscardDrafts:Z
    .end local v4           #showMarkImportant:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Boolean);v6=(One);v8=(Uninit);v9=(Uninit);v10=(PosByte);
    move v4, v7

    .line 798
    #v4=(Null);
    goto/16 :goto_1

    .restart local v4       #showMarkImportant:Z
    :cond_3
    #v4=(Boolean);v8=(Integer);v9=(Conflicted);
    move v5, v7

    .line 799
    #v5=(Null);
    goto/16 :goto_2

    :cond_4
    #v5=(Boolean);
    move v5, v7

    .line 801
    #v5=(Null);
    goto/16 :goto_3

    :cond_5
    #v5=(Conflicted);
    move v2, v7

    .line 803
    #v2=(Null);
    goto/16 :goto_4

    .restart local v2       #showDelete:Z
    :cond_6
    #v2=(Boolean);
    move v3, v7

    .line 809
    #v3=(Null);
    goto/16 :goto_5

    .restart local v3       #showDiscardDrafts:Z
    :cond_7
    #v3=(Boolean);
    move v0, v7

    .line 812
    #v0=(Null);
    goto/16 :goto_6

    .restart local v0       #archiveVisible:Z
    :cond_8
    #v0=(Boolean);
    move v5, v7

    .line 816
    #v5=(Null);
    goto/16 :goto_7

    :cond_9
    #v5=(Conflicted);
    move v5, v7

    .line 820
    #v5=(Null);
    goto/16 :goto_8

    :cond_a
    #v5=(Conflicted);
    move v5, v7

    .line 822
    #v5=(Null);
    goto/16 :goto_9

    .restart local v1       #removeFolder:Landroid/view/MenuItem;
    :cond_b
    #v1=(Reference);v5=(Conflicted);v10=(Conflicted);
    move v5, v7

    .line 830
    #v5=(Null);
    goto/16 :goto_a

    :cond_c
    #v5=(Conflicted);
    move v5, v7

    .line 834
    #v5=(Null);
    goto :goto_b

    :cond_d
    #v5=(Conflicted);v9=(PosShort);
    move v5, v7

    .line 838
    #v5=(Null);
    goto :goto_c

    :cond_e
    #v5=(Integer);v8=(Conflicted);
    move v6, v7

    .line 842
    #v6=(Null);
    goto :goto_d
.end method

.method public setCurrentConversation(Lcom/android/mail/providers/Conversation;)V
    .locals 0
    .parameter "conversation"

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView;->mCurrentConversation:Lcom/android/mail/providers/Conversation;

    .line 791
    return-void
.end method

.method protected setEmptyMode()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setTitleModeFlags(I)V

    .line 580
    return-void
.end method

.method public setFolder(Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView;->mFolder:Lcom/android/mail/providers/Folder;

    .line 306
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, v0}, Lcom/android/mail/ui/MailActionBarView;->setFolderAndAccount(Z)V

    .line 307
    return-void
.end method
