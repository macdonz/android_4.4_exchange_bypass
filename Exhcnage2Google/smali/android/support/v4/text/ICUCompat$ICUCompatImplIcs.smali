.class Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;
.super Ljava/lang/Object;
.source "ICUCompat.java"

# interfaces
.implements Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCompatImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 48
    invoke-static {p1}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locale"

    .prologue
    .line 43
    invoke-static {p1}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
