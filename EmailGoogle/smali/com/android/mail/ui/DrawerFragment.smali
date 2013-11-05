.class public Lcom/android/mail/ui/DrawerFragment;
.super Lcom/android/mail/ui/FolderListFragment;
.source "DrawerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/mail/ui/FolderListFragment;-><init>()V

    .line 46
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderListFragment;->mIsDivided:Z

    .line 48
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderListFragment;->mHideAccounts:Z

    .line 49
    return-void
.end method


# virtual methods
.method protected getListViewChoiceMode()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
