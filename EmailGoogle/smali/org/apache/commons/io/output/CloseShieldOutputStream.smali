.class public Lorg/apache/commons/io/output/CloseShieldOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/commons/io/output/ClosedOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/output/ClosedOutputStream;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    .line 50
    return-void
.end method
