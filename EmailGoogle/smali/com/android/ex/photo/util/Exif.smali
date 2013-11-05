.class public Lcom/android/ex/photo/util/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;J)I
    .locals 18
    .parameter "inputStream"
    .parameter "byteSize"

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v15, 0x0

    .line 179
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(PosShort);v16=(Conflicted);v17=(Conflicted);
    return v15

    .line 64
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);
    const/16 v7, 0x10

    .line 65
    .local v7, lookAhead:I
    #v7=(PosByte);
    const/4 v13, 0x4

    .line 66
    .local v13, readBackwards:I
    #v13=(PosByte);
    new-instance v4, Lcom/android/ex/photo/util/InputStreamBuffer;

    #v4=(UninitRef);
    const/16 v15, 0x10

    #v15=(PosByte);
    const/16 v16, 0x0

    #v16=(Null);
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v16

    #v1=(Null);
    invoke-direct {v4, v0, v15, v1}, Lcom/android/ex/photo/util/InputStreamBuffer;-><init>(Ljava/io/InputStream;IZ)V

    .line 68
    .local v4, jpeg:Lcom/android/ex/photo/util/InputStreamBuffer;
    #v4=(Reference);
    const/4 v9, 0x0

    .line 69
    .local v9, offset:I
    #v9=(Null);
    const/4 v5, 0x0

    .line 71
    .local v5, length:I
    #v5=(Null);
    const/4 v15, 0x1

    #v15=(One);
    move-wide/from16 v0, p1

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v4, v0, v1, v15}, Lcom/android/ex/photo/util/Exif;->has(Lcom/android/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_2

    .line 73
    const/4 v15, 0x0

    #v15=(Null);
    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    #v15=(Byte);
    const/16 v16, -0x1

    #v16=(Byte);
    move/from16 v0, v16

    #v0=(Byte);
    if-ne v15, v0, :cond_1

    const/4 v15, 0x1

    #v15=(One);
    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    #v15=(Byte);
    const/16 v16, -0x28

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v12, 0x1

    .line 75
    .local v12, possibleJpegFormat:Z
    :goto_1
    #v12=(Boolean);
    if-nez v12, :cond_2

    .line 76
    const/4 v15, 0x0

    #v15=(Null);
    goto :goto_0

    .line 73
    .end local v12           #possibleJpegFormat:Z
    :cond_1
    #v12=(Uninit);v15=(Byte);
    const/4 v12, 0x0

    #v12=(Null);
    goto :goto_1

    .line 81
    :cond_2
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);v9=(Integer);v10=(Conflicted);v12=(Conflicted);v15=(Integer);v16=(Integer);v17=(Conflicted);
    add-int/lit8 v15, v9, 0x3

    move-wide/from16 v0, p1

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v4, v0, v1, v15}, Lcom/android/ex/photo/util/Exif;->has(Lcom/android/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    #v15=(Boolean);
    if-eqz v15, :cond_5

    add-int/lit8 v10, v9, 0x1

    .end local v9           #offset:I
    .local v10, offset:I
    #v10=(Integer);
    invoke-virtual {v4, v9}, Lcom/android/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    #v15=(Byte);
    and-int/lit16 v15, v15, 0xff

    #v15=(Integer);
    const/16 v16, 0xff

    #v16=(PosShort);
    move/from16 v0, v16

    #v0=(PosShort);
    if-ne v15, v0, :cond_10

    .line 82
    invoke-virtual {v4, v10}, Lcom/android/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v15

    #v15=(Byte);
    and-int/lit16 v8, v15, 0xff

    .line 85
    .local v8, marker:I
    #v8=(Integer);
    const/16 v15, 0xff

    #v15=(PosShort);
    if-ne v8, v15, :cond_3

    move v9, v10

    .line 86
    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto :goto_2

    .line 88
    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    .line 91
    .end local v10           #offset:I
    .restart local v9       #offset:I
    const/16 v15, 0xd8

    if-eq v8, v15, :cond_2

    const/4 v15, 0x1

    #v15=(One);
    if-eq v8, v15, :cond_2

    .line 95
    const/16 v15, 0xd9

    #v15=(PosShort);
    if-eq v8, v15, :cond_4

    const/16 v15, 0xda

    if-ne v8, v15, :cond_6

    .line 97
    :cond_4
    add-int/lit8 v15, v9, -0x4

    #v15=(Integer);
    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 128
    .end local v8           #marker:I
    :cond_5
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v5=(Integer);v8=(Conflicted);v10=(Conflicted);v16=(Integer);
    const/16 v15, 0x8

    #v15=(PosByte);
    if-le v5, v15, :cond_f

    .line 130
    const/4 v15, 0x4

    const/16 v16, 0x0

    #v16=(Null);
    move/from16 v0, v16

    #v0=(Null);
    invoke-static {v4, v9, v15, v0}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v14

    .line 131
    .local v14, tag:I
    #v14=(Integer);
    const v15, 0x49492a00

    #v15=(Integer);
    if-eq v14, v15, :cond_a

    const v15, 0x4d4d002a

    if-eq v14, v15, :cond_a

    .line 132
    const-string v15, "CameraExif"

    #v15=(Reference);
    const-string v16, "Invalid byte order"

    #v16=(Reference);
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .line 102
    .end local v14           #tag:I
    .restart local v8       #marker:I
    :cond_6
    #v0=(PosShort);v1=(LongHi);v5=(Null);v8=(Integer);v10=(Integer);v14=(Uninit);v15=(PosShort);v16=(PosShort);
    const/4 v15, 0x2

    #v15=(PosByte);
    const/16 v16, 0x0

    #v16=(Null);
    move/from16 v0, v16

    #v0=(Null);
    invoke-static {v4, v9, v15, v0}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v5

    .line 103
    #v5=(Integer);
    const/4 v15, 0x2

    if-lt v5, v15, :cond_7

    add-int v15, v9, v5

    #v15=(Integer);
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v0, p1

    #v0=(LongLo);
    invoke-static {v4, v0, v1, v15}, Lcom/android/ex/photo/util/Exif;->has(Lcom/android/ex/photo/util/InputStreamBuffer;JI)Z

    move-result v15

    #v15=(Boolean);
    if-nez v15, :cond_8

    .line 104
    :cond_7
    #v0=(Conflicted);v15=(PosByte);
    const-string v15, "CameraExif"

    #v15=(Reference);
    const-string v16, "Invalid length"

    #v16=(Reference);
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .line 109
    :cond_8
    #v0=(LongLo);v15=(Boolean);v16=(Null);
    const/16 v15, 0xe1

    #v15=(PosShort);
    if-ne v8, v15, :cond_9

    const/16 v15, 0x8

    #v15=(PosByte);
    if-lt v5, v15, :cond_9

    add-int/lit8 v15, v9, 0x2

    #v15=(Integer);
    const/16 v16, 0x4

    #v16=(PosByte);
    const/16 v17, 0x0

    #v17=(Null);
    move/from16 v0, v16

    #v0=(PosByte);
    move/from16 v1, v17

    #v1=(Null);
    invoke-static {v4, v15, v0, v1}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    const v16, 0x45786966

    #v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    if-ne v15, v0, :cond_9

    add-int/lit8 v15, v9, 0x6

    const/16 v16, 0x2

    #v16=(PosByte);
    const/16 v17, 0x0

    move/from16 v0, v16

    #v0=(PosByte);
    move/from16 v1, v17

    invoke-static {v4, v15, v0, v1}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    if-nez v15, :cond_9

    .line 112
    add-int/lit8 v9, v9, 0x8

    .line 113
    add-int/lit8 v5, v5, -0x8

    .line 115
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    goto :goto_3

    .line 120
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v16=(Integer);v17=(Conflicted);
    add-int/2addr v9, v5

    .line 121
    const/4 v5, 0x0

    .line 124
    #v5=(Null);
    add-int/lit8 v15, v9, -0x4

    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    goto/16 :goto_2

    .line 135
    .end local v8           #marker:I
    .restart local v14       #tag:I
    :cond_a
    #v0=(Null);v5=(Integer);v8=(Conflicted);v10=(Conflicted);v14=(Integer);v16=(Null);
    const v15, 0x49492a00

    if-ne v14, v15, :cond_c

    const/4 v6, 0x1

    .line 138
    .local v6, littleEndian:Z
    :goto_4
    #v6=(Boolean);
    add-int/lit8 v15, v9, 0x4

    const/16 v16, 0x4

    #v16=(PosByte);
    move/from16 v0, v16

    #v0=(PosByte);
    invoke-static {v4, v15, v0, v6}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v15

    add-int/lit8 v2, v15, 0x2

    .line 139
    .local v2, count:I
    #v2=(Integer);
    const/16 v15, 0xa

    #v15=(PosByte);
    if-lt v2, v15, :cond_b

    if-le v2, v5, :cond_d

    .line 140
    :cond_b
    const-string v15, "CameraExif"

    #v15=(Reference);
    const-string v16, "Invalid offset"

    #v16=(Reference);
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .line 135
    .end local v2           #count:I
    .end local v6           #littleEndian:Z
    :cond_c
    #v0=(Null);v2=(Uninit);v6=(Uninit);v15=(Integer);v16=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_4

    .line 143
    .restart local v2       #count:I
    .restart local v6       #littleEndian:Z
    :cond_d
    #v0=(PosByte);v2=(Integer);v6=(Boolean);v15=(PosByte);v16=(PosByte);
    add-int/2addr v9, v2

    .line 144
    sub-int/2addr v5, v2

    .line 147
    add-int/lit8 v15, v9, -0x4

    #v15=(Integer);
    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    .line 150
    add-int/lit8 v15, v9, -0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v6}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v2

    move v3, v2

    .line 152
    .end local v2           #count:I
    .local v3, count:I
    :goto_5
    #v3=(Integer);
    add-int/lit8 v2, v3, -0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    if-lez v3, :cond_f

    const/16 v15, 0xc

    #v15=(PosByte);
    if-lt v5, v15, :cond_f

    .line 154
    const/4 v15, 0x2

    invoke-static {v4, v9, v15, v6}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v14

    .line 155
    const/16 v15, 0x112

    #v15=(PosShort);
    if-ne v14, v15, :cond_e

    .line 157
    add-int/lit8 v15, v9, 0x8

    #v15=(Integer);
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v4, v15, v0, v6}, Lcom/android/ex/photo/util/Exif;->pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I

    move-result v11

    .line 158
    .local v11, orientation:I
    #v11=(Integer);
    packed-switch v11, :pswitch_data_0

    .line 168
    :pswitch_0
    const-string v15, "CameraExif"

    #v15=(Reference);
    const-string v16, "Unsupported orientation"

    #v16=(Reference);
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .line 160
    :pswitch_1
    #v15=(Integer);v16=(PosByte);
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .line 162
    :pswitch_2
    #v15=(Integer);
    const/16 v15, 0xb4

    #v15=(PosShort);
    goto/16 :goto_0

    .line 164
    :pswitch_3
    #v15=(Integer);
    const/16 v15, 0x5a

    #v15=(PosByte);
    goto/16 :goto_0

    .line 166
    :pswitch_4
    #v15=(Integer);
    const/16 v15, 0x10e

    #v15=(PosShort);
    goto/16 :goto_0

    .line 171
    .end local v11           #orientation:I
    :cond_e
    #v11=(Uninit);
    add-int/lit8 v9, v9, 0xc

    .line 172
    add-int/lit8 v5, v5, -0xc

    .line 175
    add-int/lit8 v15, v9, -0x4

    #v15=(Integer);
    invoke-virtual {v4, v15}, Lcom/android/ex/photo/util/InputStreamBuffer;->advanceTo(I)V

    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    goto :goto_5

    .line 179
    .end local v3           #count:I
    .end local v6           #littleEndian:Z
    .end local v14           #tag:I
    :cond_f
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v14=(Conflicted);v16=(Integer);
    const/4 v15, 0x0

    #v15=(Null);
    goto/16 :goto_0

    .end local v9           #offset:I
    .restart local v10       #offset:I
    :cond_10
    #v0=(PosShort);v1=(LongHi);v2=(Uninit);v3=(Uninit);v5=(Null);v6=(Uninit);v10=(Integer);v14=(Uninit);v15=(Integer);v16=(PosShort);
    move v9, v10

    .end local v10           #offset:I
    .restart local v9       #offset:I
    goto/16 :goto_3

    .line 158
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static has(Lcom/android/ex/photo/util/InputStreamBuffer;JI)Z
    .locals 2
    .parameter "jpeg"
    .parameter "byteSize"
    .parameter "index"

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p1, v0

    #v0=(Byte);
    if-ltz v0, :cond_1

    .line 200
    int-to-long v0, p3

    #v0=(LongLo);
    cmp-long v0, v0, p1

    #v0=(Byte);
    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 203
    :goto_0
    #v0=(Boolean);
    return v0

    .line 200
    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 203
    :cond_1
    #v0=(Byte);
    invoke-virtual {p0, p3}, Lcom/android/ex/photo/util/InputStreamBuffer;->has(I)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method private static pack(Lcom/android/ex/photo/util/InputStreamBuffer;IIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 184
    const/4 v1, 0x1

    .line 185
    .local v1, step:I
    #v1=(One);
    if-eqz p3, :cond_0

    .line 186
    add-int/lit8 v3, p2, -0x1

    #v3=(Integer);
    add-int/2addr p1, v3

    .line 187
    const/4 v1, -0x1

    .line 190
    :cond_0
    #v1=(Byte);v3=(Conflicted);
    const/4 v2, 0x0

    .local v2, value:I
    #v2=(Null);
    move v0, p2

    .line 191
    .end local p2
    .local v0, length:I
    :goto_0
    #v0=(Integer);v2=(Integer);v4=(Conflicted);
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 192
    shl-int/lit8 v3, v2, 0x8

    #v3=(Integer);
    invoke-virtual {p0, p1}, Lcom/android/ex/photo/util/InputStreamBuffer;->get(I)B

    move-result v4

    #v4=(Byte);
    and-int/lit16 v4, v4, 0xff

    #v4=(Integer);
    or-int v2, v3, v4

    .line 193
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 195
    .end local v0           #length:I
    .restart local p2
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);
    return v2
.end method
