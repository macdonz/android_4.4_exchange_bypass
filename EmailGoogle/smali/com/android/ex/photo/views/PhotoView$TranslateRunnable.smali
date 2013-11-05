.class Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/photo/views/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateRunnable"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/ex/photo/views/PhotoView;

.field private mLastRunTime:J

.field private mRunning:Z

.field private mStop:Z

.field private mVelocityX:F

.field private mVelocityY:F


# direct methods
.method public constructor <init>(Lcom/android/ex/photo/views/PhotoView;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 1112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    #p0=(Reference);
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1114
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    .line 1115
    return-void
.end method

.method static synthetic access$000(Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    #v0=(Boolean);
    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a

    #v10=(Integer);
    const/4 v5, 0x0

    .line 1144
    #v5=(Null);
    iget-boolean v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 1189
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 1149
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1150
    .local v2, now:J
    #v2=(LongLo);v3=(LongHi);
    iget-wide v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    #v6=(LongLo);v7=(LongHi);
    const-wide/16 v8, -0x1

    #v8=(LongLo);v9=(LongHi);
    cmp-long v6, v6, v8

    #v6=(Byte);
    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    #v6=(LongLo);
    sub-long v6, v2, v6

    long-to-float v6, v6

    #v6=(Float);
    div-float v0, v6, v10

    .line 1151
    .local v0, delta:F
    :goto_1
    #v0=(Float);
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v6=(Reference);
    iget v7, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v7=(Integer);
    mul-float/2addr v7, v0

    #v7=(Float);
    iget v8, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v8=(Integer);
    mul-float/2addr v8, v0

    #v8=(Float);
    invoke-static {v6, v7, v8}, Lcom/android/ex/photo/views/PhotoView;->access$200(Lcom/android/ex/photo/views/PhotoView;FF)Z

    move-result v1

    .line 1152
    .local v1, didTranslate:Z
    #v1=(Boolean);
    iput-wide v2, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1154
    mul-float v4, v10, v0

    .line 1155
    .local v4, slowDown:F
    #v4=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-lez v6, :cond_8

    .line 1156
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    sub-float/2addr v6, v4

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1157
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    cmpg-float v6, v6, v5

    #v6=(Byte);
    if-gez v6, :cond_2

    .line 1158
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1166
    :cond_2
    :goto_2
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-lez v6, :cond_9

    .line 1167
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    sub-float/2addr v6, v4

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1168
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    cmpg-float v6, v6, v5

    #v6=(Byte);
    if-gez v6, :cond_3

    .line 1169
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1179
    :cond_3
    :goto_3
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    cmpl-float v5, v6, v5

    #v5=(Byte);
    if-eqz v5, :cond_5

    :cond_4
    if-nez v1, :cond_6

    .line 1180
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->stop()V

    .line 1181
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/ex/photo/views/PhotoView;->access$300(Lcom/android/ex/photo/views/PhotoView;)V

    .line 1185
    :cond_6
    #v5=(Conflicted);
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    #v5=(Boolean);
    if-nez v5, :cond_0

    .line 1188
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v5=(Reference);
    invoke-virtual {v5, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #delta:F
    .end local v1           #didTranslate:Z
    .end local v4           #slowDown:F
    :cond_7
    #v0=(Uninit);v1=(Uninit);v4=(Uninit);v5=(Null);v6=(Byte);v7=(LongHi);v8=(LongLo);
    move v0, v5

    .line 1150
    #v0=(Null);
    goto :goto_1

    .line 1161
    .restart local v0       #delta:F
    .restart local v1       #didTranslate:Z
    .restart local v4       #slowDown:F
    :cond_8
    #v0=(Float);v1=(Boolean);v4=(Float);v7=(Float);v8=(Float);
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    add-float/2addr v6, v4

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1162
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-lez v6, :cond_2

    .line 1163
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    goto :goto_2

    .line 1172
    :cond_9
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    add-float/2addr v6, v4

    #v6=(Float);
    iput v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1173
    iget v6, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    #v6=(Integer);
    cmpl-float v6, v6, v5

    #v6=(Byte);
    if-lez v6, :cond_3

    .line 1174
    iput v5, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    goto :goto_3
.end method

.method public start(FF)Z
    .locals 4
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v0, 0x0

    .line 1121
    #v0=(Null);
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 1130
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v0

    .line 1124
    :cond_0
    #v0=(Null);v2=(Boolean);v3=(Uninit);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    iput-wide v2, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mLastRunTime:J

    .line 1125
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityX:F

    .line 1126
    iput p2, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mVelocityY:F

    .line 1127
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    .line 1128
    iput-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    .line 1129
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mHeader:Lcom/android/ex/photo/views/PhotoView;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Lcom/android/ex/photo/views/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1130
    #v0=(One);
    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mRunning:Z

    .line 1138
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView$TranslateRunnable;->mStop:Z

    .line 1139
    return-void
.end method
