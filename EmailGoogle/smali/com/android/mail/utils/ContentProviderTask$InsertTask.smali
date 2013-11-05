.class public Lcom/android/mail/utils/ContentProviderTask$InsertTask;
.super Lcom/android/mail/utils/ContentProviderTask;
.source "ContentProviderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/ContentProviderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mail/utils/ContentProviderTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-super {p0, p1}, Lcom/android/mail/utils/ContentProviderTask;->doInBackground([Ljava/lang/Void;)Lcom/android/mail/utils/ContentProviderTask$Result;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
