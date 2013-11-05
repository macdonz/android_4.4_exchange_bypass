.class Lcom/android/email/provider/EmailProvider$MessageQuery;
.super Ljava/lang/Object;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageQuery"
.end annotation


# instance fields
.field final attachmentJson:Ljava/lang/String;

.field final query:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_query"
    .parameter "_attachmentJson"

    .prologue
    .line 2568
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2569
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$MessageQuery;->query:Ljava/lang/String;

    .line 2570
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$MessageQuery;->attachmentJson:Ljava/lang/String;

    .line 2571
    return-void
.end method
