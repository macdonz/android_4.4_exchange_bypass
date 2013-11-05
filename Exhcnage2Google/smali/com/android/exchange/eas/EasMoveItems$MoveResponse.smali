.class Lcom/android/exchange/eas/EasMoveItems$MoveResponse;
.super Ljava/lang/Object;
.source "EasMoveItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/eas/EasMoveItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveResponse"
.end annotation


# instance fields
.field public final moveStatus:I

.field public final newMessageId:Ljava/lang/String;

.field public final sourceMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "srcMsgId"
    .parameter "dstMsgId"
    .parameter "status"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/eas/EasMoveItems$MoveResponse;->sourceMessageId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/exchange/eas/EasMoveItems$MoveResponse;->newMessageId:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/android/exchange/eas/EasMoveItems$MoveResponse;->moveStatus:I

    .line 44
    return-void
.end method
