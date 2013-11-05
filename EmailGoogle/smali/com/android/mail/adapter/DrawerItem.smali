.class public Lcom/android/mail/adapter/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final mAccount:Lcom/android/mail/providers/Account;

.field private final mActivity:Lcom/android/mail/ui/ControllableActivity;

.field private final mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

.field public final mFolder:Lcom/android/mail/providers/Folder;

.field public final mFolderType:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIsEnabled:Z

.field public mIsSelected:Z

.field public final mResource:I

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V
    .locals 1
    .parameter "type"
    .parameter "activity"
    .parameter "folder"
    .parameter "folderType"
    .parameter "account"
    .parameter "resource"
    .parameter "isCurrentAccount"
    .parameter "bidiFormatter"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/adapter/DrawerItem;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    .line 133
    iput-object p3, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    .line 134
    iput p4, p0, Lcom/android/mail/adapter/DrawerItem;->mFolderType:I

    .line 135
    iput-object p5, p0, Lcom/android/mail/adapter/DrawerItem;->mAccount:Lcom/android/mail/providers/Account;

    .line 136
    iput p6, p0, Lcom/android/mail/adapter/DrawerItem;->mResource:I

    .line 137
    iput-boolean p7, p0, Lcom/android/mail/adapter/DrawerItem;->mIsSelected:Z

    .line 138
    invoke-interface {p2}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    iput p1, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    .line 140
    invoke-direct {p0}, Lcom/android/mail/adapter/DrawerItem;->calculateEnabled()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/adapter/DrawerItem;->mIsEnabled:Z

    .line 141
    iput-object p8, p0, Lcom/android/mail/adapter/DrawerItem;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    .line 142
    return-void
.end method

.method private accountToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "[DrawerItem "

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, " VIEW_ACCOUNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", mAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 277
    #v0=(Null);
    iget v2, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 291
    sget-object v2, Lcom/android/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "DrawerItem.isItemEnabled() for invalid type %d"

    #v3=(Reference);
    new-array v1, v1, [Ljava/lang/Object;

    #v1=(Reference);
    iget v4, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 292
    :goto_0
    :pswitch_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    :pswitch_1
    #v0=(Null);v1=(One);v2=(Integer);v3=(Uninit);v4=(Uninit);
    move v0, v1

    .line 283
    #v0=(One);
    goto :goto_0

    :pswitch_2
    #v0=(Null);
    move v0, v1

    .line 286
    #v0=(One);
    goto :goto_0

    .line 277
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private folderToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "[DrawerItem "

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, " VIEW_FOLDER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", mFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", mFolderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Lcom/android/mail/adapter/DrawerItem;->mFolderType:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAccountView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 344
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AccountItemView;

    .line 349
    .local v0, accountItemView:Lcom/android/mail/ui/AccountItemView;
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-boolean v3, p0, Lcom/android/mail/adapter/DrawerItem;->mIsSelected:Z

    #v3=(Boolean);
    iget v4, p0, Lcom/android/mail/adapter/DrawerItem;->mResource:I

    #v4=(Integer);
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/ui/AccountItemView;->bind(Lcom/android/mail/providers/Account;ZI)V

    .line 350
    const v2, 0x7f080026

    #v2=(Integer);
    invoke-virtual {v0, v2}, Lcom/android/mail/ui/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 351
    .local v1, v:Landroid/view/View;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget v2, v2, Lcom/android/mail/providers/Account;->color:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 352
    return-object v0

    .line 346
    .end local v0           #accountItemView:Lcom/android/mail/ui/AccountItemView;
    .end local v1           #v:Landroid/view/View;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    #v2=(Reference);
    const/high16 v3, 0x7f04

    #v3=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/AccountItemView;

    .restart local v0       #accountItemView:Lcom/android/mail/ui/AccountItemView;
    goto :goto_0
.end method

.method private getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 404
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 405
    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .line 409
    .local v0, emptyView:Landroid/view/ViewGroup;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 407
    .end local v0           #emptyView:Landroid/view/ViewGroup;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f040046

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0       #emptyView:Landroid/view/ViewGroup;
    goto :goto_0
.end method

.method private getFolderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 383
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 384
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/FolderItemView;

    .line 389
    .local v0, folderItemView:Lcom/android/mail/ui/FolderItemView;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/adapter/DrawerItem;->mBidiFormatter:Landroid/support/v4/text/BidiFormatter;

    #v3=(Reference);
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/ui/FolderItemView;->bind(Lcom/android/mail/providers/Folder;Lcom/android/mail/ui/FolderItemView$DropHandler;Landroid/support/v4/text/BidiFormatter;)V

    .line 390
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    const v2, 0x7f080076

    #v2=(Integer);
    invoke-virtual {v0, v2}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/mail/providers/Folder;->setFolderBlockColor(Lcom/android/mail/providers/Folder;Landroid/view/View;)V

    .line 391
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/FolderItemView;->setIcon(Lcom/android/mail/providers/Folder;)V

    .line 392
    return-object v0

    .line 386
    .end local v0           #folderItemView:Lcom/android/mail/ui/FolderItemView;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f04004a

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/FolderItemView;

    .restart local v0       #folderItemView:Lcom/android/mail/ui/FolderItemView;
    goto :goto_0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 364
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 365
    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    .line 370
    .local v0, headerView:Landroid/widget/TextView;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget v1, p0, Lcom/android/mail/adapter/DrawerItem;->mResource:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 371
    return-object v0

    .line 367
    .end local v0           #headerView:Landroid/widget/TextView;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/mail/adapter/DrawerItem;->mInflater:Landroid/view/LayoutInflater;

    #v1=(Reference);
    const v2, 0x7f04004c

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #headerView:Landroid/widget/TextView;
    goto :goto_0
.end method

.method public static getViewTypes()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x4

    #v0=(PosByte);
    return v0
.end method

.method private headerToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "[DrawerItem "

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, " VIEW_HEADER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", mResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget v1, p0, Lcom/android/mail/adapter/DrawerItem;->mResource:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "]"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static ofAccount(Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)Lcom/android/mail/adapter/DrawerItem;
    .locals 9
    .parameter "activity"
    .parameter "account"
    .parameter "unreadCount"
    .parameter "isCurrentAccount"
    .parameter "bidiFormatter"

    .prologue
    .line 180
    new-instance v0, Lcom/android/mail/adapter/DrawerItem;

    #v0=(UninitRef);
    const/4 v1, 0x2

    #v1=(PosByte);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x4

    #v4=(PosByte);
    move-object v2, p0

    #v2=(Reference);
    move-object v5, p1

    #v5=(Reference);
    move v6, p2

    #v6=(Integer);
    move v7, p3

    #v7=(Boolean);
    move-object v8, p4

    #v8=(Reference);
    invoke-direct/range {v0 .. v8}, Lcom/android/mail/adapter/DrawerItem;-><init>(ILcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static ofFolder(Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILandroid/support/v4/text/BidiFormatter;)Lcom/android/mail/adapter/DrawerItem;
    .locals 9
    .parameter "activity"
    .parameter "folder"
    .parameter "folderType"
    .parameter "bidiFormatter"

    .prologue
    const/4 v1, 0x0

    .line 155
    #v1=(Null);
    new-instance v0, Lcom/android/mail/adapter/DrawerItem;

    #v0=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, -0x1

    #v6=(Byte);
    move-object v2, p0

    #v2=(Reference);
    move-object v3, p1

    #v3=(Reference);
    move v4, p2

    #v4=(Integer);
    move v7, v1

    #v7=(Null);
    move-object v8, p3

    #v8=(Reference);
    invoke-direct/range {v0 .. v8}, Lcom/android/mail/adapter/DrawerItem;-><init>(ILcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static ofHeader(Lcom/android/mail/ui/ControllableActivity;ILandroid/support/v4/text/BidiFormatter;)Lcom/android/mail/adapter/DrawerItem;
    .locals 9
    .parameter "activity"
    .parameter "resource"
    .parameter "bidiFormatter"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    .line 202
    #v4=(Null);
    new-instance v0, Lcom/android/mail/adapter/DrawerItem;

    #v0=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    move-object v2, p0

    #v2=(Reference);
    move-object v5, v3

    #v5=(Null);
    move v6, p1

    #v6=(Integer);
    move v7, v4

    #v7=(Null);
    move-object v8, p2

    #v8=(Reference);
    invoke-direct/range {v0 .. v8}, Lcom/android/mail/adapter/DrawerItem;-><init>(ILcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    #v0=(Reference);
    return-object v0
.end method

.method public static ofWaitView(Lcom/android/mail/ui/ControllableActivity;Landroid/support/v4/text/BidiFormatter;)Lcom/android/mail/adapter/DrawerItem;
    .locals 9
    .parameter "activity"
    .parameter "bidiFormatter"

    .prologue
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    .line 223
    #v4=(Null);
    new-instance v0, Lcom/android/mail/adapter/DrawerItem;

    #v0=(UninitRef);
    const/4 v1, 0x3

    #v1=(PosByte);
    const/4 v6, -0x1

    #v6=(Byte);
    move-object v2, p0

    #v2=(Reference);
    move-object v5, v3

    #v5=(Null);
    move v7, v4

    #v7=(Null);
    move-object v8, p1

    #v8=(Reference);
    invoke-direct/range {v0 .. v8}, Lcom/android/mail/adapter/DrawerItem;-><init>(ILcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Folder;ILcom/android/mail/providers/Account;IZLandroid/support/v4/text/BidiFormatter;)V

    #v0=(Reference);
    return-object v0
.end method

.method private static waitToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "[DrawerItem VIEW_WAITING_FOR_SYNC ]"

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 237
    iget v1, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 251
    sget-object v1, Lcom/android/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    #v1=(Reference);
    const-string v2, "DrawerItem.getView(%d) for an invalid type!"

    #v2=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget v5, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, result:Landroid/view/View;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v0

    .line 239
    .end local v0           #result:Landroid/view/View;
    :pswitch_0
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/adapter/DrawerItem;->getFolderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    .restart local v0       #result:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 242
    .end local v0           #result:Landroid/view/View;
    :pswitch_1
    #v0=(Uninit);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/adapter/DrawerItem;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 243
    .restart local v0       #result:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 245
    .end local v0           #result:Landroid/view/View;
    :pswitch_2
    #v0=(Uninit);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/adapter/DrawerItem;->getAccountView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 246
    .restart local v0       #result:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 248
    .end local v0           #result:Landroid/view/View;
    :pswitch_3
    #v0=(Uninit);
    invoke-direct {p0, p1, p2}, Lcom/android/mail/adapter/DrawerItem;->getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    .restart local v0       #result:Landroid/view/View;
    #v0=(Reference);
    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isHighlighted(Lcom/android/mail/utils/FolderUri;I)Z
    .locals 5
    .parameter "currentFolder"
    .parameter "currentType"

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 312
    #v1=(Null);
    iget v2, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v2=(Integer);
    packed-switch v2, :pswitch_data_0

    .line 329
    sget-object v2, Lcom/android/mail/adapter/DrawerItem;->LOG_TAG:Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "DrawerItem.isHighlighted() for invalid type %d"

    #v3=(Reference);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    iget v4, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    :cond_0
    :goto_0
    :pswitch_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v1

    .line 318
    :pswitch_1
    #v0=(One);v1=(Null);v2=(Integer);v3=(Uninit);v4=(Uninit);
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    if-eqz v2, :cond_0

    .line 319
    iget v2, p0, Lcom/android/mail/adapter/DrawerItem;->mFolderType:I

    #v2=(Integer);
    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/mail/adapter/DrawerItem;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    invoke-virtual {v2, p1}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    :goto_1
    #v0=(Boolean);v2=(Integer);
    move v1, v0

    #v1=(Boolean);
    goto :goto_0

    :cond_1
    #v0=(One);v1=(Null);
    move v0, v1

    #v0=(Null);
    goto :goto_1

    .line 312
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isItemEnabled()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/mail/adapter/DrawerItem;->mIsEnabled:Z

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/mail/adapter/DrawerItem;->mType:I

    #v0=(Integer);
    packed-switch v0, :pswitch_data_0

    .line 112
    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);
    return-object v0

    .line 103
    :pswitch_0
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/adapter/DrawerItem;->folderToString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 105
    :pswitch_1
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/adapter/DrawerItem;->headerToString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 107
    :pswitch_2
    #v0=(Integer);
    invoke-direct {p0}, Lcom/android/mail/adapter/DrawerItem;->accountToString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 109
    :pswitch_3
    #v0=(Integer);
    invoke-static {}, Lcom/android/mail/adapter/DrawerItem;->waitToString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 101
    #v0=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
