.class Lcom/android/exchange/service/EasServerConnection$1;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "EasServerConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/service/EasServerConnection;->getHttpClient(J)Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/service/EasServerConnection;


# direct methods
.method constructor <init>(Lcom/android/exchange/service/EasServerConnection;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/exchange/service/EasServerConnection$1;->this$0:Lcom/android/exchange/service/EasServerConnection;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 182
    .local v0, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    #v0=(Reference);
    new-instance v1, Lcom/android/exchange/utility/CurlLogger;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/exchange/utility/CurlLogger;-><init>()V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 183
    return-object v0
.end method