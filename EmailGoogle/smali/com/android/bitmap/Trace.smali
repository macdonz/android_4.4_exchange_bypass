.class public abstract Lcom/android/bitmap/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #v0=(Integer);
    const/16 v1, 0x12

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static endSection()V
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #v0=(Integer);
    const/16 v1, 0x12

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    :cond_0
    return-void
.end method
