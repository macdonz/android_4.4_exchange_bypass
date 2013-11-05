.class public Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;
.super Ljava/lang/Object;
.source "FolderSelectorAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/FolderSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFolder:Lcom/android/mail/providers/Folder;

.field private mIsPresent:Z

.field public mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Folder;Z)V
    .locals 0
    .parameter "folder"
    .parameter "isPresent"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/android/mail/providers/Folder;

    .line 61
    iput-boolean p2, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 84
    :goto_0
    #v0=(Integer);v1=(Conflicted);
    return v0

    .line 81
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-boolean v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    iget-boolean v1, p1, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    #v1=(Boolean);
    if-eq v0, v1, :cond_2

    .line 82
    iget-boolean v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    #v0=(Byte);
    goto :goto_0

    :cond_1
    #v0=(Boolean);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 84
    :cond_2
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->compareTo(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getFolder()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    #v0=(Boolean);
    return v0
.end method

.method public setIsPresent(Z)V
    .locals 0
    .parameter "isPresent"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->mIsPresent:Z

    .line 74
    return-void
.end method
