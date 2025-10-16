.class public Lc/d/a/d/a/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:Landroid/app/PendingIntent;

.field public final e:Landroid/app/PendingIntent;

.field public final f:Landroid/app/PendingIntent;

.field public final g:Landroid/app/PendingIntent;

.field public h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/d/a/d/a/a/a;->h:Z

    move v1, p3

    iput v1, v0, Lc/d/a/d/a/a/a;->a:I

    move-wide v1, p11

    iput-wide v1, v0, Lc/d/a/d/a/a/a;->b:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lc/d/a/d/a/a/a;->c:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lc/d/a/d/a/a/a;->d:Landroid/app/PendingIntent;

    move-object/from16 v1, p16

    iput-object v1, v0, Lc/d/a/d/a/a/a;->e:Landroid/app/PendingIntent;

    move-object/from16 v1, p17

    iput-object v1, v0, Lc/d/a/d/a/a/a;->f:Landroid/app/PendingIntent;

    move-object/from16 v1, p18

    iput-object v1, v0, Lc/d/a/d/a/a/a;->g:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/d/a/a/c;)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p1}, Lc/d/a/d/a/a/c;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/d/a/d/a/a/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lc/d/a/d/a/a/a;->b(Lc/d/a/d/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/d/a/a/a;->g:Landroid/app/PendingIntent;

    return-object p1

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lc/d/a/d/a/a/c;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lc/d/a/d/a/a/a;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lc/d/a/d/a/a/a;->b(Lc/d/a/d/a/a/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lc/d/a/d/a/a/a;->f:Landroid/app/PendingIntent;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final b(Lc/d/a/d/a/a/c;)Z
    .locals 4

    invoke-virtual {p1}, Lc/d/a/d/a/a/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lc/d/a/d/a/a/a;->b:J

    iget-wide v2, p0, Lc/d/a/d/a/a/a;->c:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
