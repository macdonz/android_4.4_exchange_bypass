.class public Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
.super Ljava/lang/Object;
.source "ContentTypeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/ContentTypeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 18
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 212
    const/4 v7, 0x0

    .line 213
    .local v7, parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    #v7=(Null);
    const-string v5, ""

    .line 214
    .local v5, mimeType:Ljava/lang/String;
    #v5=(Reference);
    const/4 v6, 0x0

    .line 216
    .local v6, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v6=(Null);
    new-instance v15, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    #v15=(UninitRef);
    new-instance v1, Ljava/io/StringReader;

    #v1=(UninitRef);
    move-object/from16 v0, p2

    #v0=(Reference);
    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    invoke-direct {v15, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 218
    .local v15, parser:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :try_start_0
    #v15=(Reference);
    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Reference);v8=(Conflicted);
    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v17

    .line 235
    .local v17, type:Ljava/lang/String;
    #v17=(Reference);
    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v16

    .line 237
    .local v16, subType:Ljava/lang/String;
    #v16=(Reference);
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/ArrayList;

    move-result-object v11

    .line 241
    .local v11, paramNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v11=(Reference);
    invoke-virtual {v15}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 243
    .local v13, paramValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v13=(Reference);
    if-eqz v11, :cond_2

    if-eqz v13, :cond_2

    .line 244
    const/4 v9, 0x0

    .local v9, i:I
    #v9=(Null);
    move-object v14, v6

    .end local v6           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    #v2=(Conflicted);v4=(Conflicted);v6=(Reference);v9=(Integer);v10=(Conflicted);v12=(Conflicted);v14=(Reference);
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    #v1=(Integer);
    if-ge v9, v1, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 245
    if-nez v14, :cond_3

    .line 246
    new-instance v6, Ljava/util/HashMap;

    #v6=(UninitRef);
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    #v1=(DoubleLo);v2=(DoubleHi);
    const-wide v3, 0x3ff4cccccccccccdL

    #v3=(LongLo);v4=(LongHi);
    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    #v1=(Integer);
    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 247
    .end local v14           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    :try_start_3
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Reference);
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, paramName:Ljava/lang/String;
    #v10=(Reference);
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    #v12=(Reference);
    check-cast v12, Ljava/lang/String;

    .line 249
    .local v12, paramValue:Ljava/lang/String;
    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 244
    add-int/lit8 v9, v9, 0x1

    move-object v14, v6

    .end local v6           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 220
    .end local v9           #i:I
    .end local v10           #paramName:Ljava/lang/String;
    .end local v11           #paramNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #paramValue:Ljava/lang/String;
    .end local v13           #paramValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #subType:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    .restart local v6       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Null);v7=(Null);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);
    move-exception v8

    .line 221
    .local v8, e:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    #v8=(Reference);
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Parsing value \'"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 224
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-object v7, v8

    .line 231
    #v7=(Reference);
    goto/16 :goto_0

    .line 226
    .end local v8           #e:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_1
    #v1=(Reference);v2=(Uninit);v3=(Uninit);v7=(Null);v8=(Uninit);
    move-exception v8

    .line 227
    .local v8, e:Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    #v8=(Reference);
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 228
    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Parsing value \'"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 230
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    new-instance v7, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    .end local v7           #parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    #v7=(UninitRef);
    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v7, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    .restart local v7       #parseException:Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    #v7=(Reference);
    goto/16 :goto_0

    .line 254
    .end local v8           #e:Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    :catch_2
    #v1=(Conflicted);v4=(Conflicted);v6=(Reference);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-exception v1

    .line 256
    :cond_2
    :goto_3
    new-instance v1, Lorg/apache/james/mime4j/field/ContentTypeField;

    #v1=(UninitRef);
    move-object/from16 v2, p1

    #v2=(Reference);
    move-object/from16 v3, p2

    #v3=(Reference);
    move-object/from16 v4, p3

    #v4=(Reference);
    invoke-direct/range {v1 .. v7}, Lorg/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V

    #v1=(Reference);
    return-object v1

    .line 254
    .end local v6           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #i:I
    .restart local v11       #paramNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13       #paramValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #subType:Ljava/lang/String;
    .restart local v17       #type:Ljava/lang/String;
    :catch_3
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v9=(Integer);v11=(Reference);v13=(Reference);v14=(Reference);v16=(Reference);v17=(Reference);
    move-exception v1

    #v1=(Reference);
    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    #v6=(Reference);
    goto :goto_3

    .end local v6           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    #v1=(Integer);
    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_2

    .end local v6           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object v6, v14

    .end local v14           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3
.end method
