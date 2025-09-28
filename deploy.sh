#!/bin/bash

echo "🚀 做事行动器部署脚本"
echo "========================"

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "❌ 错误：未安装 Vercel CLI"
    echo "请先运行: npm install -g vercel"
    exit 1
fi

echo "✅ Vercel CLI 已安装"

# 检查是否已登录
if ! vercel whoami &> /dev/null; then
    echo "🔐 需要登录 Vercel..."
    vercel login
fi

echo "📦 开始部署项目..."

# 部署到生产环境
if vercel --prod; then
    echo "🎉 部署成功！"
    echo ""
    echo "📝 接下来的步骤："
    echo "1. 在浏览器中打开提供的 URL"
    echo "2. 如果需要自定义域名，可以运行: vercel domain add your-domain.com"
    echo "3. 要查看部署状态，可以运行: vercel ls"
    echo ""
    echo "🔧 其他有用的命令："
    echo "- vercel logs --follow    # 查看实时日志"
    echo "- vercel inspect          # 查看项目详情"
    echo "- vercel domain ls        # 查看域名列表"
else
    echo "❌ 部署失败"
    echo ""
    echo "🔧 故障排除："
    echo "1. 检查网络连接"
    echo "2. 确认已登录: vercel whoami"
    echo "3. 查看详细错误: vercel --prod --debug"
    exit 1
fi
