.class final Lcom/android/email/service/ImapService$5;
.super Ljava/lang/Object;
.source "ImapService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/ImapService;->searchMailboxImpl(Landroid/content/Context;JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/service/ImapService$SortableMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/service/ImapService$SortableMessage;Lcom/android/email/service/ImapService$SortableMessage;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1436
    invoke-static {p1}, Lcom/android/email/service/ImapService$SortableMessage;->access$300(Lcom/android/email/service/ImapService$SortableMessage;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    invoke-static {p2}, Lcom/android/email/service/ImapService$SortableMessage;->access$300(Lcom/android/email/service/ImapService$SortableMessage;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/email/service/ImapService$SortableMessage;->access$300(Lcom/android/email/service/ImapService$SortableMessage;)J

    move-result-wide v0

    #v0=(LongLo);
    invoke-static {p2}, Lcom/android/email/service/ImapService$SortableMessage;->access$300(Lcom/android/email/service/ImapService$SortableMessage;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_1

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    :cond_1
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1433
    check-cast p1, Lcom/android/email/service/ImapService$SortableMessage;

    .end local p1
    check-cast p2, Lcom/android/email/service/ImapService$SortableMessage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/ImapService$5;->compare(Lcom/android/email/service/ImapService$SortableMessage;Lcom/android/email/service/ImapService$SortableMessage;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
