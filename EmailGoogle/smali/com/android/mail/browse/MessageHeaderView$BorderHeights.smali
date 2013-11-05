.class Lcom/android/mail/browse/MessageHeaderView$BorderHeights;
.super Ljava/lang/Object;
.source "MessageHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MessageHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BorderHeights"
.end annotation


# instance fields
.field public bottomHeight:I

.field final synthetic this$0:Lcom/android/mail/browse/MessageHeaderView;

.field public topHeight:I


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/MessageHeaderView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1027
    #v0=(Byte);
    iput-object p1, p0, Lcom/android/mail/browse/MessageHeaderView$BorderHeights;->this$0:Lcom/android/mail/browse/MessageHeaderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    #p0=(Reference);
    iput v0, p0, Lcom/android/mail/browse/MessageHeaderView$BorderHeights;->topHeight:I

    .line 1029
    iput v0, p0, Lcom/android/mail/browse/MessageHeaderView$BorderHeights;->bottomHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/MessageHeaderView;Lcom/android/mail/browse/MessageHeaderView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/android/mail/browse/MessageHeaderView$BorderHeights;-><init>(Lcom/android/mail/browse/MessageHeaderView;)V

    #p0=(Reference);
    return-void
.end method
