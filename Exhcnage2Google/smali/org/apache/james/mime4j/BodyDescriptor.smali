.class public Lorg/apache/james/mime4j/BodyDescriptor;
.super Ljava/lang/Object;
.source "BodyDescriptor.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/james/mime4j/BodyDescriptor;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/BodyDescriptor;-><init>(Lorg/apache/james/mime4j/BodyDescriptor;)V

    .line 48
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 56
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    #p0=(Reference);
    const-string v0, "text/plain"

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 37
    const-string v0, "us-ascii"

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    .line 38
    const-string v0, "7bit"

    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    .line 40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 41
    iput-boolean v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 57
    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 58
    const-string v0, "message/rfc822"

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    #v0=(Conflicted);
    const-string v0, "text/plain"

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .parameter "headerValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v19, Ljava/util/HashMap;

    #v19=(UninitRef);
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v19, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v19=(Reference);
    const-string v21, ";"

    #v21=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    #v21=(Integer);
    const/16 v22, -0x1

    #v22=(Byte);
    move/from16 v0, v21

    #v0=(Integer);
    move/from16 v1, v22

    #v1=(Byte);
    if-ne v0, v1, :cond_1

    .line 158
    move-object/from16 v15, p1

    .line 159
    .local v15, main:Ljava/lang/String;
    #v15=(Reference);
    const/16 v18, 0x0

    .line 165
    .local v18, rest:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Conflicted);v18=(Reference);v22=(Integer);
    const-string v21, ""

    #v21=(Reference);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    if-eqz v18, :cond_a

    .line 167
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 168
    .local v11, chars:[C
    #v11=(Reference);
    new-instance v16, Ljava/lang/StringBuffer;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v16, paramName:Ljava/lang/StringBuffer;
    #v16=(Reference);
    new-instance v17, Ljava/lang/StringBuffer;

    #v17=(UninitRef);
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v17, paramValue:Ljava/lang/StringBuffer;
    #v17=(Reference);
    const/4 v7, 0x0

    .line 172
    .local v7, READY_FOR_NAME:B
    #v7=(Null);
    const/4 v4, 0x1

    .line 173
    .local v4, IN_NAME:B
    #v4=(One);
    const/4 v8, 0x2

    .line 174
    .local v8, READY_FOR_VALUE:B
    #v8=(PosByte);
    const/4 v6, 0x3

    .line 175
    .local v6, IN_VALUE:B
    #v6=(PosByte);
    const/4 v5, 0x4

    .line 176
    .local v5, IN_QUOTED_VALUE:B
    #v5=(PosByte);
    const/4 v9, 0x5

    .line 177
    .local v9, VALUE_DONE:B
    #v9=(PosByte);
    const/16 v3, 0x63

    .line 179
    .local v3, ERROR:B
    #v3=(PosByte);
    const/16 v20, 0x0

    .line 180
    .local v20, state:B
    #v20=(Null);
    const/4 v12, 0x0

    .line 181
    .local v12, escaped:Z
    #v12=(Null);
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v10=(Conflicted);v12=(Boolean);v13=(Conflicted);v14=(Integer);v20=(PosByte);v21=(Conflicted);v22=(Conflicted);
    array-length v0, v11

    #v0=(Integer);
    move/from16 v21, v0

    #v21=(Integer);
    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    .line 182
    aget-char v10, v11, v14

    .line 184
    .local v10, c:C
    #v10=(Char);
    sparse-switch v20, :sswitch_data_0

    .line 181
    :cond_0
    :goto_2
    :sswitch_0
    #v0=(Conflicted);v21=(Conflicted);
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 161
    .end local v3           #ERROR:B
    .end local v4           #IN_NAME:B
    .end local v5           #IN_QUOTED_VALUE:B
    .end local v6           #IN_VALUE:B
    .end local v7           #READY_FOR_NAME:B
    .end local v8           #READY_FOR_VALUE:B
    .end local v9           #VALUE_DONE:B
    .end local v10           #c:C
    .end local v11           #chars:[C
    .end local v12           #escaped:Z
    .end local v14           #i:I
    .end local v15           #main:Ljava/lang/String;
    .end local v16           #paramName:Ljava/lang/StringBuffer;
    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    .end local v18           #rest:Ljava/lang/String;
    .end local v20           #state:B
    :cond_1
    #v0=(Integer);v1=(Byte);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v20=(Uninit);v21=(Integer);v22=(Byte);
    const/16 v21, 0x0

    #v21=(Null);
    const-string v22, ";"

    #v22=(Reference);
    move-object/from16 v0, p1

    #v0=(Reference);
    move-object/from16 v1, v22

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    #v22=(Integer);
    move-object/from16 v0, p1

    move/from16 v1, v21

    #v1=(Null);
    move/from16 v2, v22

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 162
    .restart local v15       #main:Ljava/lang/String;
    #v15=(Reference);
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    #v21=(Integer);
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #rest:Ljava/lang/String;
    #v18=(Reference);
    goto :goto_0

    .line 186
    .restart local v3       #ERROR:B
    .restart local v4       #IN_NAME:B
    .restart local v5       #IN_QUOTED_VALUE:B
    .restart local v6       #IN_VALUE:B
    .restart local v7       #READY_FOR_NAME:B
    .restart local v8       #READY_FOR_VALUE:B
    .restart local v9       #VALUE_DONE:B
    .restart local v10       #c:C
    .restart local v11       #chars:[C
    .restart local v12       #escaped:Z
    .restart local v14       #i:I
    .restart local v16       #paramName:Ljava/lang/StringBuffer;
    .restart local v17       #paramValue:Ljava/lang/StringBuffer;
    .restart local v20       #state:B
    :sswitch_1
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(PosByte);v4=(One);v5=(PosByte);v6=(PosByte);v7=(Null);v8=(PosByte);v9=(PosByte);v10=(Char);v11=(Reference);v12=(Boolean);v13=(Conflicted);v14=(Integer);v16=(Reference);v17=(Reference);v20=(PosByte);v22=(Conflicted);
    const/16 v21, 0x3b

    #v21=(PosByte);
    move/from16 v0, v21

    #v0=(PosByte);
    if-ne v10, v0, :cond_0

    .line 187
    const/16 v20, 0x0

    #v20=(Null);
    goto :goto_2

    .line 191
    :sswitch_2
    #v0=(Integer);v20=(PosByte);v21=(Integer);
    const/16 v21, 0x3d

    #v21=(PosByte);
    move/from16 v0, v21

    #v0=(PosByte);
    if-ne v10, v0, :cond_2

    .line 192
    sget-object v21, Lorg/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/james/mime4j/Log;

    #v21=(Reference);
    const-string v22, "Expected header param name, got \'=\'"

    #v22=(Reference);
    invoke-virtual/range {v21 .. v22}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 193
    const/16 v20, 0x63

    .line 194
    goto :goto_2

    .line 197
    :cond_2
    #v21=(PosByte);v22=(Conflicted);
    new-instance v16, Ljava/lang/StringBuffer;

    .end local v16           #paramName:Ljava/lang/StringBuffer;
    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .restart local v16       #paramName:Ljava/lang/StringBuffer;
    #v16=(Reference);
    new-instance v17, Ljava/lang/StringBuffer;

    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    #v17=(UninitRef);
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .restart local v17       #paramValue:Ljava/lang/StringBuffer;
    #v17=(Reference);
    const/16 v20, 0x1

    .line 204
    :sswitch_3
    #v0=(Integer);v21=(Integer);
    const/16 v21, 0x3d

    #v21=(PosByte);
    move/from16 v0, v21

    #v0=(PosByte);
    if-ne v10, v0, :cond_4

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    #v21=(Integer);
    if-nez v21, :cond_3

    .line 206
    const/16 v20, 0x63

    goto :goto_2

    .line 208
    :cond_3
    const/16 v20, 0x2

    .line 209
    goto :goto_2

    .line 213
    :cond_4
    #v21=(PosByte);
    move-object/from16 v0, v16

    #v0=(Reference);
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 217
    :sswitch_4
    #v0=(Integer);v21=(Integer);
    const/4 v13, 0x0

    .line 218
    .local v13, fallThrough:Z
    #v13=(Null);
    sparse-switch v10, :sswitch_data_1

    .line 228
    const/16 v20, 0x3

    .line 229
    const/4 v13, 0x1

    .line 232
    :goto_3
    :sswitch_5
    #v13=(Boolean);
    if-eqz v13, :cond_0

    .line 238
    .end local v13           #fallThrough:Z
    :sswitch_6
    #v13=(Conflicted);
    const/4 v13, 0x0

    .line 239
    .restart local v13       #fallThrough:Z
    #v13=(Null);
    sparse-switch v10, :sswitch_data_2

    .line 250
    move-object/from16 v0, v17

    #v0=(Reference);
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 253
    :goto_4
    #v13=(Boolean);v21=(Conflicted);
    if-eqz v13, :cond_0

    .line 259
    .end local v13           #fallThrough:Z
    :sswitch_7
    #v0=(Conflicted);v13=(Conflicted);
    sparse-switch v10, :sswitch_data_3

    .line 269
    const/16 v20, 0x63

    .line 270
    goto :goto_2

    .line 224
    .restart local v13       #fallThrough:Z
    :sswitch_8
    #v0=(Integer);v13=(Null);v21=(Integer);
    const/16 v20, 0x4

    .line 225
    goto :goto_3

    .line 243
    :sswitch_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    #v21=(Reference);
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    #v22=(Reference);
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    move-object/from16 v2, v22

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/16 v20, 0x5

    .line 247
    const/4 v13, 0x1

    .line 248
    #v13=(One);
    goto :goto_4

    .line 261
    .end local v13           #fallThrough:Z
    :sswitch_a
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v13=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    const/16 v20, 0x0

    .line 262
    #v20=(Null);
    goto/16 :goto_2

    .line 275
    :sswitch_b
    #v0=(Integer);v20=(PosByte);v21=(Integer);
    sparse-switch v10, :sswitch_data_4

    .line 297
    if-eqz v12, :cond_5

    .line 298
    const/16 v21, 0x5c

    #v21=(PosByte);
    move-object/from16 v0, v17

    #v0=(Reference);
    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 300
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v21=(Integer);
    const/4 v12, 0x0

    .line 301
    #v12=(Null);
    move-object/from16 v0, v17

    #v0=(Reference);
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 277
    :sswitch_c
    #v0=(Integer);v12=(Boolean);
    if-nez v12, :cond_6

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    #v21=(Reference);
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    #v22=(Reference);
    move-object/from16 v0, v19

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    move-object/from16 v2, v22

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/16 v20, 0x5

    goto/16 :goto_2

    .line 284
    :cond_6
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v21=(Integer);v22=(Conflicted);
    const/4 v12, 0x0

    .line 285
    #v12=(Null);
    move-object/from16 v0, v17

    #v0=(Reference);
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 290
    :sswitch_d
    #v0=(Integer);v12=(Boolean);
    if-eqz v12, :cond_7

    .line 291
    const/16 v21, 0x5c

    #v21=(PosByte);
    move-object/from16 v0, v17

    #v0=(Reference);
    move/from16 v1, v21

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v21=(Integer);
    if-nez v12, :cond_8

    const/4 v12, 0x1

    .line 294
    :goto_5
    goto/16 :goto_2

    .line 293
    :cond_8
    const/4 v12, 0x0

    #v12=(Null);
    goto :goto_5

    .line 310
    .end local v10           #c:C
    :cond_9
    #v0=(Integer);v10=(Conflicted);v12=(Boolean);
    const/16 v21, 0x3

    #v21=(PosByte);
    move/from16 v0, v20

    #v0=(PosByte);
    move/from16 v1, v21

    #v1=(PosByte);
    if-ne v0, v1, :cond_a

    .line 311
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    #v21=(Reference);
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    #v22=(Reference);
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    #v0=(Reference);
    move-object/from16 v1, v21

    #v1=(Reference);
    move-object/from16 v2, v22

    #v2=(Reference);
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v3           #ERROR:B
    .end local v4           #IN_NAME:B
    .end local v5           #IN_QUOTED_VALUE:B
    .end local v6           #IN_VALUE:B
    .end local v7           #READY_FOR_NAME:B
    .end local v8           #READY_FOR_VALUE:B
    .end local v9           #VALUE_DONE:B
    .end local v11           #chars:[C
    .end local v12           #escaped:Z
    .end local v14           #i:I
    .end local v16           #paramName:Ljava/lang/StringBuffer;
    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    .end local v20           #state:B
    :cond_a
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);
    return-object v19

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    .line 218
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    .line 239
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    .line 259
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    .line 275
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    .line 73
    #v11=(One);
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v10, "content-transfer-encoding"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-nez v10, :cond_1

    .line 76
    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_0

    .line 80
    iput-object p2, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-void

    .line 83
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Boolean);v11=(One);
    const-string v10, "content-type"

    #v10=(Reference);
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    if-nez v10, :cond_0

    .line 84
    iput-boolean v11, p0, Lorg/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 86
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 91
    new-instance v6, Ljava/lang/StringBuffer;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v6, sb:Ljava/lang/StringBuffer;
    #v6=(Reference);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    #v1=(Conflicted);v2=(Integer);v10=(PosByte);
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-ge v2, v10, :cond_4

    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 94
    .local v1, c:C
    #v1=(Char);
    const/16 v10, 0xd

    #v10=(PosByte);
    if-eq v1, v10, :cond_2

    const/16 v10, 0xa

    if-ne v1, v10, :cond_3

    .line 92
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 100
    .end local v1           #c:C
    :cond_4
    #v1=(Conflicted);v10=(Integer);
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-direct {p0, v10}, Lorg/apache/james/mime4j/BodyDescriptor;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v5=(Reference);
    const-string v10, ""

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, main:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 104
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 105
    const/16 v10, 0x2f

    #v10=(PosByte);
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 106
    .local v3, index:I
    #v3=(Integer);
    const/4 v9, 0x0

    .line 107
    .local v9, valid:Z
    #v9=(Null);
    const/4 v10, -0x1

    #v10=(Byte);
    if-eq v3, v10, :cond_5

    .line 108
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, type:Ljava/lang/String;
    #v8=(Reference);
    add-int/lit8 v10, v3, 0x1

    #v10=(Integer);
    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, subtype:Ljava/lang/String;
    #v7=(Reference);
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #v10=(Reference);
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    #v11=(Reference);
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    const/4 v9, 0x1

    .line 116
    .end local v7           #subtype:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    #v7=(Conflicted);v8=(Conflicted);v9=(Boolean);v10=(Conflicted);v11=(Conflicted);
    if-nez v9, :cond_6

    .line 117
    const/4 v4, 0x0

    .line 120
    .end local v3           #index:I
    .end local v9           #valid:Z
    :cond_6
    #v3=(Conflicted);v9=(Conflicted);
    const-string v10, "boundary"

    #v10=(Reference);
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, b:Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_7

    if-nez v0, :cond_8

    :cond_7
    const-string v10, "multipart/"

    #v10=(Reference);
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_9

    .line 126
    :cond_8
    iput-object v4, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 129
    :cond_9
    #v10=(Conflicted);
    invoke-virtual {p0}, Lorg/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_a

    .line 130
    iput-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 133
    :cond_a
    const-string v10, "charset"

    #v10=(Reference);
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, c:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_b

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    #v10=(Reference);
    iput-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    .line 144
    :cond_b
    #v10=(Conflicted);
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    #v10=(Reference);
    invoke-interface {v10, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, ""

    #v11=(Reference);
    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "boundary"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v10, p0, Lorg/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "charset"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public isBase64Encoded()Z
    .locals 2

    .prologue
    .line 378
    const-string v0, "base64"

    #v0=(Reference);
    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isMessage()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "message/rfc822"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "multipart/"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isQuotedPrintableEncoded()Z
    .locals 2

    .prologue
    .line 385
    const-string v0, "quoted-printable"

    #v0=(Reference);
    iget-object v1, p0, Lorg/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
