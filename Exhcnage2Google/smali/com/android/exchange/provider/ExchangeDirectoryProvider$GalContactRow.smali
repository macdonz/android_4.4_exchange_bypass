.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalContactRow"
.end annotation


# static fields
.field static dataId:J


# instance fields
.field private final mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

.field private row:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    const-wide/16 v0, 0x1

    #v0=(LongLo);v1=(LongHi);
    sput-wide v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    return-void
.end method

.method constructor <init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "projection"
    .parameter "contactId"
    .parameter "accountName"
    .parameter "displayName"

    .prologue
    const/4 v5, 0x1

    .line 121
    #v5=(One);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    .line 123
    iget v0, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->size:I

    #v0=(Integer);
    new-array v0, v0, [Ljava/lang/Object;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    .line 125
    const-string v0, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "data_id"

    sget-wide v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x1

    #v3=(LongLo);v4=(LongHi);
    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "display_name_alt"

    invoke-virtual {p0, v0, p5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "account_type"

    const-string v1, "com.google.android.exchange"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "account_name"

    invoke-virtual {p0, v0, p4}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v0, "raw_contact_is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v0, "is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method static addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 157
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 158
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    #v0=(UninitRef);
    move-object v1, p1

    #v1=(Reference);
    move-wide v2, p2

    #v2=(LongLo);v3=(LongHi);
    move-object v4, p4

    #v4=(Reference);
    move-object v5, p5

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    #v0=(Reference);
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v1, "data2"

    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v1, "data1"

    invoke-virtual {v0, v1, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 165
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method

.method public static addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "firstName"
    .parameter "lastName"

    .prologue
    .line 182
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    #v0=(UninitRef);
    move-object v1, p1

    #v1=(Reference);
    move-wide v2, p2

    #v2=(LongLo);v3=(LongHi);
    move-object v4, p4

    #v4=(Reference);
    move-object v5, p5

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    #v0=(Reference);
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v1, "data2"

    invoke-virtual {v0, v1, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v1, "data3"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v1, "data1"

    invoke-virtual {v0, v1, p5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method static addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "cursor"
    .parameter "projection"
    .parameter "contactId"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 169
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 170
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    #v0=(UninitRef);
    move-object v1, p1

    #v1=(Reference);
    move-wide v2, p2

    #v2=(LongLo);v3=(LongHi);
    move-object v4, p4

    #v4=(Reference);
    move-object v5, p5

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    #v0=(Reference);
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v1, "data2"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v1, "data1"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 177
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void
.end method


# virtual methods
.method getRow()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    #v0=(Reference);
    return-object v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Integer;

    .line 148
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #v2=(Integer);
    aput-object p2, v1, v2

    .line 153
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 151
    :cond_0
    #v2=(Uninit);v3=(Uninit);
    const-string v1, "Exchange"

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Unsupported column: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
