.class final Lcom/android/mail/providers/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/android/mail/providers/Folder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/providers/Folder;
    .locals 2
    .parameter "source"

    .prologue
    .line 530
    new-instance v0, Lcom/android/mail/providers/Folder;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, p1, v1}, Lcom/android/mail/providers/Folder;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #v0=(Reference);
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "source"
    .parameter "loader"

    .prologue
    .line 535
    new-instance v0, Lcom/android/mail/providers/Folder;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/mail/providers/Folder;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/Folder$2;->createFromParcel(Landroid/os/Parcel;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/providers/Folder$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public newArray(I)[Lcom/android/mail/providers/Folder;
    .locals 1
    .parameter "size"

    .prologue
    .line 540
    new-array v0, p1, [Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/Folder$2;->newArray(I)[Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
