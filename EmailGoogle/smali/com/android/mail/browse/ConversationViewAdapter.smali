.class public Lcom/android/mail/browse/ConversationViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/ConversationViewAdapter$1;,
        Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;,
        Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;,
        Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;,
        Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;,
        Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;
    }
.end annotation


# instance fields
.field private final mAccountController:Lcom/android/mail/browse/ConversationAccountController;

.field private mAddressCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoSource:Lcom/android/mail/ContactInfoSource;

.field private mContext:Landroid/content/Context;

.field private mConversationCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

.field private final mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/browse/ConversationOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private final mMatcher:Lcom/android/mail/utils/VeiledAddressMatcher;

.field private final mMessageCallbacks:Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

.field private mSuperCollapsedListener:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/browse/ConversationAccountController;Landroid/app/LoaderManager;Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;Lcom/android/mail/ContactInfoSource;Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;Ljava/util/Map;Lcom/android/mail/FormattedDateBuilder;)V
    .locals 1
    .parameter "controllableActivity"
    .parameter "accountController"
    .parameter "loaderManager"
    .parameter "messageCallbacks"
    .parameter "contactInfoSource"
    .parameter "convCallbacks"
    .parameter "scbListener"
    .parameter
    .parameter "dateBuilder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/ui/ControllableActivity;",
            "Lcom/android/mail/browse/ConversationAccountController;",
            "Landroid/app/LoaderManager;",
            "Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;",
            "Lcom/android/mail/ContactInfoSource;",
            "Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;",
            "Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Address;",
            ">;",
            "Lcom/android/mail/FormattedDateBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 450
    .local p8, addressCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mail/providers/Address;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 451
    #p0=(Reference);
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    .line 452
    iput-object p9, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    .line 453
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/android/mail/browse/ConversationAccountController;

    .line 454
    iput-object p3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mLoaderManager:Landroid/app/LoaderManager;

    .line 455
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 456
    iput-object p4, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mMessageCallbacks:Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    .line 457
    iput-object p5, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mContactInfoSource:Lcom/android/mail/ContactInfoSource;

    .line 458
    iput-object p6, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mConversationCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    .line 459
    iput-object p7, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mSuperCollapsedListener:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    .line 460
    iput-object p8, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mAddressCache:Ljava/util/Map;

    .line 461
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 463
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    .line 464
    invoke-interface {p1}, Lcom/android/mail/ui/ControllableActivity;->getAccountController()Lcom/android/mail/ui/AccountController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mail/ui/AccountController;->getVeiledAddressMatcher()Lcom/android/mail/utils/VeiledAddressMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mMatcher:Lcom/android/mail/utils/VeiledAddressMatcher;

    .line 465
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mConversationCallbacks:Lcom/android/mail/browse/ConversationViewHeader$ConversationViewHeaderCallbacks;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/ConversationAccountController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mAccountController:Lcom/android/mail/browse/ConversationAccountController;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mail/browse/ConversationViewAdapter;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mAddressCache:Ljava/util/Map;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mMessageCallbacks:Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/ContactInfoSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mContactInfoSource:Lcom/android/mail/ContactInfoSource;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/utils/VeiledAddressMatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mMatcher:Lcom/android/mail/utils/VeiledAddressMatcher;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mail/browse/ConversationViewAdapter;)Landroid/app/LoaderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mLoaderManager:Landroid/app/LoaderManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mail/browse/ConversationViewAdapter;)Landroid/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mSuperCollapsedListener:Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    #v0=(Reference);
    return-object v0
.end method

.method public static newMessageHeaderItem(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/FormattedDateBuilder;Lcom/android/mail/browse/ConversationMessage;ZZ)Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    .locals 6
    .parameter "adapter"
    .parameter "dateBuilder"
    .parameter "message"
    .parameter "expanded"
    .parameter "showImages"

    .prologue
    .line 546
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/FormattedDateBuilder;Lcom/android/mail/browse/ConversationMessage;ZZ)V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public addBorder(ZZZZ)I
    .locals 6
    .parameter "contiguous"
    .parameter "expanded"
    .parameter "firstBorder"
    .parameter "lastBorder"

    .prologue
    .line 559
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move v2, p1

    #v2=(Boolean);
    move v3, p2

    #v3=(Boolean);
    move v4, p3

    #v4=(Boolean);
    move v5, p4

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;ZZZZ)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewAdapter;->addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public addConversationHeader(Lcom/android/mail/providers/Conversation;)I
    .locals 2
    .parameter "conv"

    .prologue
    .line 532
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ConversationViewAdapter$ConversationHeaderItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/ConversationViewAdapter$1;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewAdapter;->addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 521
    .local v0, pos:I
    #v0=(Integer);
    invoke-virtual {p1, v0}, Lcom/android/mail/browse/ConversationOverlayItem;->setPosition(I)V

    .line 522
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return v0
.end method

.method public addMessageFooter(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;)I
    .locals 2
    .parameter "headerItem"

    .prologue
    .line 540
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/android/mail/browse/ConversationViewAdapter$1;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewAdapter;->addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public addMessageHeader(Lcom/android/mail/browse/ConversationMessage;ZZ)I
    .locals 6
    .parameter "msg"
    .parameter "expanded"
    .parameter "showImages"

    .prologue
    .line 536
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    #v0=(UninitRef);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    #v2=(Reference);
    move-object v1, p0

    #v1=(Reference);
    move-object v3, p1

    #v3=(Reference);
    move v4, p2

    #v4=(Boolean);
    move v5, p3

    #v5=(Boolean);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/FormattedDateBuilder;Lcom/android/mail/browse/ConversationMessage;ZZ)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewAdapter;->addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public addSuperCollapsedBlock(II)I
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 554
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;IILcom/android/mail/browse/ConversationViewAdapter$1;)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/ConversationViewAdapter;->addItem(Lcom/android/mail/browse/ConversationOverlayItem;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationViewAdapter;->notifyDataSetChanged()V

    .line 529
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getDateBuilder()Lcom/android/mail/FormattedDateBuilder;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    #v0=(Reference);
    return-object v0
.end method

.method public getItem(I)Lcom/android/mail/browse/ConversationOverlayItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationOverlayItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/android/mail/browse/ConversationOverlayItem;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 489
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/ConversationOverlayItem;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationOverlayItem;->getType()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v0=(Reference);
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/ConversationViewAdapter;->getItem(I)Lcom/android/mail/browse/ConversationOverlayItem;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/mail/browse/ConversationViewAdapter;->getView(Lcom/android/mail/browse/ConversationOverlayItem;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/android/mail/browse/ConversationOverlayItem;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .parameter "item"
    .parameter "convertView"
    .parameter "parent"
    .parameter "measureOnly"

    .prologue
    .line 501
    if-nez p2, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v2=(Reference);
    invoke-virtual {p1, v1, v2, p3}, Lcom/android/mail/browse/ConversationOverlayItem;->createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, v:Landroid/view/View;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-virtual {p1, v0, p4}, Lcom/android/mail/browse/ConversationOverlayItem;->bindView(Landroid/view/View;Z)V

    .line 508
    return-object v0

    .line 504
    .end local v0           #v:Landroid/view/View;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 479
    const/16 v0, 0x8

    #v0=(PosByte);
    return v0
.end method

.method public newBorderItem(ZZ)Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;
    .locals 6
    .parameter "contiguous"
    .parameter "expanded"

    .prologue
    const/4 v4, 0x0

    .line 563
    #v4=(Null);
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;

    #v0=(UninitRef);
    move-object v1, p0

    #v1=(Reference);
    move v2, p1

    #v2=(Boolean);
    move v3, p2

    #v3=(Boolean);
    move v5, v4

    #v5=(Null);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/ConversationViewAdapter$BorderItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;ZZZZ)V

    #v0=(Reference);
    return-object v0
.end method

.method public newMessageFooterItem(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;)Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;
    .locals 2
    .parameter "headerItem"

    .prologue
    .line 550
    new-instance v0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p0, p1, v1}, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/android/mail/browse/ConversationViewAdapter$1;)V

    #v0=(Reference);
    return-object v0
.end method

.method public replaceSuperCollapsedBlock(Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;Ljava/util/Collection;)V
    .locals 4
    .parameter "blockToRemove"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/browse/ConversationOverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p2, replacements:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/browse/ConversationOverlayItem;>;"
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 570
    .local v1, pos:I
    #v1=(Integer);
    const/4 v3, -0x1

    #v3=(Byte);
    if-ne v1, v3, :cond_1

    .line 581
    :cond_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 574
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Byte);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 575
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    #v0=(Null);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    #v0=(Integer);v2=(Integer);
    if-ge v0, v2, :cond_0

    .line 579
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mail/browse/ConversationOverlayItem;

    invoke-virtual {v3, v0}, Lcom/android/mail/browse/ConversationOverlayItem;->setPosition(I)V

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateItemsForMessage(Lcom/android/mail/browse/ConversationMessage;Ljava/util/List;)V
    .locals 4
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/browse/ConversationMessage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    .local p2, affectedPositions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    #v0=(Null);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, len:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    if-ge v0, v2, :cond_1

    .line 586
    iget-object v3, p0, Lcom/android/mail/browse/ConversationViewAdapter;->mItems:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/browse/ConversationOverlayItem;

    .line 587
    .local v1, item:Lcom/android/mail/browse/ConversationOverlayItem;
    invoke-virtual {v1, p1}, Lcom/android/mail/browse/ConversationOverlayItem;->belongsToMessage(Lcom/android/mail/browse/ConversationMessage;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 588
    invoke-virtual {v1, p1}, Lcom/android/mail/browse/ConversationOverlayItem;->setMessage(Lcom/android/mail/browse/ConversationMessage;)V

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    #v3=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    .end local v1           #item:Lcom/android/mail/browse/ConversationOverlayItem;
    :cond_1
    #v1=(Conflicted);
    return-void
.end method
