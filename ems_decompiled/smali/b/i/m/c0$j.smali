.class public Lb/i/m/c0$j;
.super Lb/i/m/c0$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final o:Lb/i/m/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/i/m/c0;->j(Landroid/view/WindowInsets;)Lb/i/m/c0;

    move-result-object v0

    sput-object v0, Lb/i/m/c0$j;->o:Lb/i/m/c0;

    return-void
.end method

.method public constructor <init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/i/m/c0$i;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
