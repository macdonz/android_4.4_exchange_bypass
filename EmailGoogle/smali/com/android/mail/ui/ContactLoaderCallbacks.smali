.class public Lcom/android/mail/ui/ContactLoaderCallbacks;
.super Ljava/lang/Object;
.source "ContactLoaderCallbacks.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/mail/ContactInfoSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mail/ContactInfoSource;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/mail/ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContactInfoMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mObservable:Landroid/database/DataSetObservable;

.field private mSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    #p0=(Reference);
    new-instance v0, Landroid/database/DataSetObservable;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    .line 48
    iput-object p1, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;)Lcom/android/mail/ContactInfo;
    .locals 1
    .parameter "email"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ContactInfo;

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/mail/SenderInfoLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mContext:Landroid/content/Context;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mSenders:Ljava/util/Set;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/SenderInfoLoader;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    #v0=(Reference);
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;>;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;>;"
    .local p2, data:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;"
    iput-object p2, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mContactInfoMap:Lcom/google/common/collect/ImmutableMap;

    .line 64
    iget-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 65
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Lcom/google/common/collect/ImmutableMap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/ContactLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ContactInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/android/mail/ContactInfo;>;>;"
    return-void
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setSenders(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, emailAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mSenders:Ljava/util/Set;

    .line 53
    return-void
.end method

.method public unregisterObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mail/ui/ContactLoaderCallbacks;->mObservable:Landroid/database/DataSetObservable;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 87
    return-void
.end method
