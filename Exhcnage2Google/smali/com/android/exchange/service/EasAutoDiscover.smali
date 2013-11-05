.class public Lcom/android/exchange/service/EasAutoDiscover;
.super Lcom/android/exchange/service/EasServerConnection;
.source "EasAutoDiscover.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 56
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    #v0=(Reference);
    new-instance v1, Lcom/android/emailcommon/provider/HostAuth;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    #v1=(Reference);
    invoke-direct {p0, p1, v0, v1}, Lcom/android/exchange/service/EasServerConnection;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 57
    #p0=(Reference);
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p2, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object p3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v1, 0x5

    #v1=(PosByte);
    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 60
    iget-object v0, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/16 v1, 0x1bb

    #v1=(PosShort);
    iput v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 61
    return-void
.end method

.method private buildRequestEntity()Lorg/apache/http/entity/StringEntity;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 145
    :try_start_0
    #v3=(Null);
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 146
    .local v1, s:Lorg/xmlpull/v1/XmlSerializer;
    #v1=(Reference);
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef);
    const/16 v2, 0x400

    #v2=(PosShort);
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 147
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    #v0=(Reference);
    const-string v2, "UTF-8"

    #v2=(Reference);
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 148
    const-string v2, "UTF-8"

    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    const/4 v2, 0x0

    #v2=(Null);
    const-string v4, "Autodiscover"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const/4 v2, 0x0

    const-string v4, "xmlns"

    const-string v5, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    #v5=(Reference);
    invoke-interface {v1, v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const/4 v2, 0x0

    const-string v4, "Request"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const/4 v2, 0x0

    const-string v4, "EMailAddress"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    #v2=(Reference);
    iget-object v4, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "EMailAddress"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const/4 v2, 0x0

    #v2=(Null);
    const-string v4, "AcceptableResponseSchema"

    #v4=(Reference);
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const-string v2, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    #v2=(Reference);
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const/4 v2, 0x0

    #v2=(Null);
    const-string v4, "AcceptableResponseSchema"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    const/4 v2, 0x0

    const-string v4, "Request"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v2, 0x0

    const-string v4, "Autodiscover"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 159
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    #v2=(UninitRef);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #os:Ljava/io/ByteArrayOutputStream;
    .end local v1           #s:Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v4=(Conflicted);v5=(Conflicted);
    return-object v2

    .line 163
    :catch_0
    #v2=(Conflicted);
    move-exception v2

    :goto_1
    #v2=(Reference);
    move-object v2, v3

    .line 166
    #v2=(Null);
    goto :goto_0

    .line 162
    :catch_1
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    goto :goto_1

    .line 160
    :catch_2
    #v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    goto :goto_1
.end method

.method private doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;
    .locals 11
    .parameter "post"
    .parameter "canRetry"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v10, 0x0

    .line 198
    :try_start_0
    #v10=(Null);
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->executePost(Lorg/apache/http/client/methods/HttpPost;)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 203
    .local v4, resp:Lcom/android/exchange/EasResponse;
    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 205
    .local v1, code:I
    #v1=(Integer);
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->isRedirectError()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_2

    .line 206
    invoke-virtual {v4}, Lcom/android/exchange/EasResponse;->getRedirectAddress()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, loc:Ljava/lang/String;
    #v3=(Reference);
    if-eqz v3, :cond_1

    const-string v6, "http"

    #v6=(Reference);
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 208
    const-string v5, "Exchange"

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Posting autodiscover to redirect: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/exchange/service/EasAutoDiscover;->redirectHostAuth(Ljava/lang/String;)V

    .line 210
    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v4

    .line 231
    .end local v1           #code:I
    .end local v3           #loc:Ljava/lang/String;
    .end local v4           #resp:Lcom/android/exchange/EasResponse;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v4

    .line 199
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);v8=(One);v9=(Uninit);
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    #v2=(Reference);
    move-object v4, v5

    .line 200
    #v4=(Null);
    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #code:I
    .restart local v3       #loc:Ljava/lang/String;
    .restart local v4       #resp:Lcom/android/exchange/EasResponse;
    :cond_1
    #v1=(Integer);v2=(Uninit);v3=(Reference);v4=(Reference);v6=(Boolean);
    move-object v4, v5

    .line 213
    #v4=(Null);
    goto :goto_0

    .line 216
    .end local v3           #loc:Ljava/lang/String;
    :cond_2
    #v3=(Uninit);v4=(Reference);
    const/16 v6, 0x191

    #v6=(PosShort);
    if-ne v1, v6, :cond_3

    .line 217
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const-string v6, "@"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const/16 v6, 0x40

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 220
    .local v0, atSignIndex:I
    #v0=(Integer);
    iget-object v5, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v6, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 221
    const-string v5, "Exchange"

    const-string v6, "401 received; trying username: %s"

    new-array v7, v8, [Ljava/lang/Object;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v8=(Reference);
    iget-object v8, v8, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->resetAuthorization(Lorg/apache/http/client/methods/HttpPost;)V

    .line 223
    invoke-direct {p0, p1, v10}, Lcom/android/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v4

    goto :goto_0

    .line 225
    .end local v0           #atSignIndex:I
    :cond_3
    #v0=(Uninit);v5=(Null);v6=(PosShort);v7=(Uninit);v8=(One);
    const/16 v6, 0xc8

    if-eq v1, v6, :cond_0

    .line 227
    const-string v6, "Exchange"

    #v6=(Reference);
    const-string v7, "Bad response code when posting autodiscover: %d"

    #v7=(Reference);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v4, v5

    .line 228
    #v4=(Null);
    goto :goto_0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    const/16 v2, 0x40

    #v2=(PosByte);
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 133
    .local v0, amp:I
    #v0=(Integer);
    if-gez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 136
    :goto_0
    #v2=(Integer);
    return-object v1

    :cond_0
    #v2=(PosByte);
    iget-object v1, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    #v2=(Integer);
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getResponse(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lcom/android/exchange/EasResponse;
    .locals 5
    .parameter "post"
    .parameter "domain"

    .prologue
    const/4 v4, 0x1

    .line 178
    #v4=(One);
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v0

    .line 179
    .local v0, resp:Lcom/android/exchange/EasResponse;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 180
    const-string v1, "Exchange"

    #v1=(Reference);
    const-string v2, "Error in autodiscover, trying aternate address"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "https://autodiscover."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/autodiscover/autodiscover.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 182
    invoke-direct {p0, p1, v4}, Lcom/android/exchange/service/EasAutoDiscover;->doPost(Lorg/apache/http/client/methods/HttpPost;Z)Lcom/android/exchange/EasResponse;

    move-result-object v0

    .line 184
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0
.end method

.method private static parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 5
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 298
    .local v1, type:I
    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Action"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 311
    return-void

    .line 300
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 301
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, name:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "Error"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 304
    const-string v2, "Redirect"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 305
    const-string v2, "Exchange"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Redirect: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 306
    :cond_2
    #v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    const-string v2, "Settings"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 307
    invoke-static {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseAutodiscover(Lcom/android/exchange/EasResponse;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 7
    .parameter "resp"

    .prologue
    const/4 v6, 0x2

    #v6=(PosByte);
    const/4 v3, 0x0

    .line 371
    :try_start_0
    #v3=(Null);
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 372
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    #v5=(Reference);
    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 373
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    #v4=(Integer);
    if-eqz v4, :cond_0

    move-object v0, v3

    .line 403
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v0

    .line 376
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v4=(Integer);v5=(Reference);
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_1

    move-object v0, v3

    .line 377
    #v0=(Null);
    goto :goto_0

    .line 379
    :cond_1
    #v0=(Uninit);
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Autodiscover"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_2

    move-object v0, v3

    .line 380
    #v0=(Null);
    goto :goto_0

    .line 383
    :cond_2
    #v0=(Uninit);
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    .line 385
    .local v0, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_3
    #v0=(Reference);v2=(Conflicted);v4=(Conflicted);
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 386
    .local v2, type:I
    #v2=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v2, v4, :cond_4

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Autodiscover"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #type:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-object v0, v3

    .line 403
    #v0=(Null);
    goto :goto_0

    .line 389
    .restart local v0       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v1       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2       #type:I
    :cond_4
    #v0=(Reference);v1=(Reference);v2=(Integer);v4=(PosByte);v5=(Reference);
    if-ne v2, v6, :cond_3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Response"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_3

    .line 391
    invoke-static {v1, v0}, Lcom/android/exchange/service/EasAutoDiscover;->parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    .line 393
    iget-object v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #v4=(Reference);
    if-eqz v4, :cond_3

    goto :goto_0

    .line 400
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #type:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    #v4=(Reference);
    goto :goto_1

    .line 398
    :catch_1
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    goto :goto_1
.end method

.method private static parseResponse(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 350
    .local v1, type:I
    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Response"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 361
    return-void

    .line 352
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 353
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, name:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "User"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_2

    .line 355
    invoke-static {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0

    .line 356
    :cond_2
    const-string v2, "Action"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 357
    invoke-static {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->parseAction(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, mobileSync:Z
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 246
    .local v2, type:I
    #v2=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v2, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Server"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 263
    return-void

    .line 248
    :cond_1
    #v4=(PosByte);v5=(Conflicted);
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, name:Ljava/lang/String;
    #v1=(Reference);
    const-string v4, "Type"

    #v4=(Reference);
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 251
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "MobileSync"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 252
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 254
    :cond_2
    #v0=(Boolean);v5=(Conflicted);
    if-eqz v0, :cond_0

    const-string v4, "Url"

    #v4=(Reference);
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 255
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, url:Ljava/lang/String;
    #v3=(Reference);
    if-eqz v3, :cond_0

    .line 257
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Autodiscover URL: %s"

    #v5=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method private static parseSettings(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 4
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 276
    .local v1, type:I
    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Settings"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 285
    return-void

    .line 278
    :cond_1
    #v2=(PosByte);v3=(Conflicted);
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 279
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, name:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "Server"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 281
    invoke-static {p0, p1}, Lcom/android/exchange/service/EasAutoDiscover;->parseServer(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V

    goto :goto_0
.end method

.method private static parseUser(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 9
    .parameter "parser"
    .parameter "hostAuth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 323
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Null);
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 324
    .local v3, type:I
    #v3=(Integer);
    const/4 v4, 0x3

    #v4=(PosByte);
    if-ne v3, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "User"

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 337
    return-void

    .line 326
    :cond_1
    #v4=(PosByte);v5=(Conflicted);
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, name:Ljava/lang/String;
    #v2=(Reference);
    const-string v4, "EMailAddress"

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 329
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, addr:Ljava/lang/String;
    #v0=(Reference);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Autodiscover, email: %s"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 331
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    #v0=(Conflicted);v4=(Boolean);v5=(Conflicted);v6=(Conflicted);
    const-string v4, "DisplayName"

    #v4=(Reference);
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 332
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, dn:Ljava/lang/String;
    #v1=(Reference);
    const-string v4, "Exchange"

    #v4=(Reference);
    const-string v5, "Autodiscover, user: %s"

    #v5=(Reference);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object v1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public doAutodiscover()Landroid/os/Bundle;
    .locals 14

    .prologue
    const/4 v13, 0x1

    #v13=(One);
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v8, 0x0

    .line 70
    #v8=(Null);
    invoke-direct {p0}, Lcom/android/exchange/service/EasAutoDiscover;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, domain:Ljava/lang/String;
    #v2=(Reference);
    if-nez v2, :cond_0

    move-object v0, v8

    .line 124
    :goto_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-object v0

    .line 75
    :cond_0
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    invoke-direct {p0}, Lcom/android/exchange/service/EasAutoDiscover;->buildRequestEntity()Lorg/apache/http/entity/StringEntity;

    move-result-object v4

    .line 76
    .local v4, entity:Lorg/apache/http/entity/StringEntity;
    #v4=(Reference);
    if-nez v4, :cond_1

    move-object v0, v8

    .line 77
    #v0=(Null);
    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    #v0=(Uninit);
    new-instance v9, Ljava/lang/StringBuilder;

    #v9=(UninitRef);
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #v9=(Reference);
    const-string v10, "https://"

    #v10=(Reference);
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/autodiscover/autodiscover.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/xml"

    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {p0, v9, v4, v10, v11}, Lcom/android/exchange/service/EasAutoDiscover;->makePost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    .line 82
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    #v6=(Reference);
    invoke-direct {p0, v6, v2}, Lcom/android/exchange/service/EasAutoDiscover;->getResponse(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)Lcom/android/exchange/EasResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 83
    .local v7, resp:Lcom/android/exchange/EasResponse;
    #v7=(Reference);
    if-nez v7, :cond_2

    move-object v0, v8

    .line 84
    #v0=(Null);
    goto :goto_0

    .line 89
    :cond_2
    :try_start_1
    #v0=(Uninit);
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 90
    .local v1, code:I
    #v1=(Integer);
    const/16 v9, 0x191

    #v9=(PosShort);
    if-ne v1, v9, :cond_3

    .line 91
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v9, 0x1

    #v9=(One);
    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v9, "autodiscover_error_code"

    #v9=(Reference);
    const/16 v10, 0xb

    #v10=(PosByte);
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    move-exception v3

    .line 122
    .local v3, e:Ljava/lang/IllegalArgumentException;
    #v3=(Reference);
    const-string v9, "Exchange"

    #v9=(Reference);
    const-string v10, "ISE with domain: %s"

    #v10=(Reference);
    new-array v11, v13, [Ljava/lang/Object;

    #v11=(Reference);
    aput-object v2, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    #v3=(Conflicted);v9=(Conflicted);
    move-object v0, v8

    .line 124
    #v0=(Null);
    goto :goto_0

    .line 96
    .restart local v1       #code:I
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    :cond_3
    :try_start_3
    #v0=(Uninit);v1=(Integer);v3=(Uninit);v5=(Uninit);v6=(Reference);v7=(Reference);v9=(PosShort);v11=(Null);
    invoke-static {v7}, Lcom/android/exchange/service/EasAutoDiscover;->parseAutodiscover(Lcom/android/exchange/EasResponse;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v5

    .line 97
    .local v5, hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    #v5=(Reference);
    if-eqz v5, :cond_4

    .line 101
    iget-object v9, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    #v9=(Reference);
    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 102
    iget-object v9, p0, Lcom/android/exchange/service/EasServerConnection;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v9, v9, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 105
    const/16 v9, 0x1bb

    #v9=(PosShort);
    iput v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 106
    const-string v9, "gEas"

    #v9=(Reference);
    iput-object v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 107
    const/4 v9, 0x5

    #v9=(PosByte);
    iput v9, v5, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 108
    new-instance v0, Landroid/os/Bundle;

    #v0=(UninitRef);
    const/4 v9, 0x2

    invoke-direct {v0, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 109
    .restart local v0       #bundle:Landroid/os/Bundle;
    #v0=(Reference);
    const-string v9, "autodiscover_host_auth"

    #v9=(Reference);
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    const-string v9, "autodiscover_error_code"

    const/4 v10, -0x1

    #v10=(Byte);
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    goto/16 :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    .end local v5           #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v9

    #v9=(Reference);
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v9

    .restart local v1       #code:I
    .restart local v5       #hostAuth:Lcom/android/emailcommon/provider/HostAuth;
    :cond_4
    #v0=(Uninit);v1=(Integer);v5=(Reference);v9=(PosShort);v10=(Reference);
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
